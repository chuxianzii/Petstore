package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Enumeration;

public class SignonFormServlet extends HttpServlet {
//    private static final String SIGNON_FROM = "/WEB-INF/main.jsp";
//    private static final String MAIN = "/WEB-INF/main.jsp";

    private String username;
    private String password;
    private Account account;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        username = request.getParameter("username");
        password = request.getParameter("password");
        HttpSession session = request.getSession();
        session.setAttribute("username",username);
        session.setAttribute("password",password);

        if (username != null && password != null){
            AccountService accountService;
            accountService = new AccountService();
//            新建一个accountservice对象
            account = accountService.getAccount(username, password);


            String code = request.getParameter("code");
            // 验证验证码
            String sessionCode = (String) request.getSession().getAttribute("code");

            if(account != null && code != null && !"".equals(code) && sessionCode != null && !"".equals(sessionCode)){
                if (code.equalsIgnoreCase(sessionCode)) {
                    session.setAttribute("success","0");
                    session.setAttribute("account",account);
                    request.getRequestDispatcher("main.jsp").forward(request,response);
                } else {
                    session.setAttribute("success","1");   //验证码不正确
                    request.getRequestDispatcher("login.jsp").forward(request,response);
                }
            }
            else{
                session.setAttribute("success","11");  //用户名或者密码不正确
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
        }
        else {
            session.setAttribute("success","111");  //用户名密码不能为空
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }


//            if (account != null) {
//                request.getRequestDispatcher("main.jsp").forward(request,response);
//            }
//            else
//            {
//                request.getRequestDispatcher("login.jsp").forward(request,response);
//            }

        }
    }
