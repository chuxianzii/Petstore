package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class CheckPasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password  = request.getParameter("password");
        String CheckPassword = request.getParameter("repeatedPassword");
        response.setContentType("text/xml");
        PrintWriter out = response.getWriter();

        if (CheckPassword.isEmpty()) {
            out.println("<msg>NULL</msg>");

        } else {
            if (password == CheckPassword) {
                out.println("<msg>NotExist</msg>");
            } else if (password != CheckPassword) {
                out.println("<msg>Exist</msg>");
            }
        }
        out.flush();
        out.close();
    }
}
