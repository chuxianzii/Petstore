package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class usernameValidationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        response.setContentType("text/xml");
        PrintWriter out = response.getWriter();

        if (username.isEmpty()) {
            out.println("<msg>NULL</msg>");

        } else {
            Account account = new Account();
            account.setUsername(username);
            AccountService service = new AccountService();

            Account checkAccount = service.getAccount(username);
            if (checkAccount == null) {
                out.println("<msg>NotExist</msg>");
            } else if (checkAccount.getUsername() != null) {
                out.println("<msg>Exist</msg>");
            }
        }
        out.flush();
        out.close();
    }
}
