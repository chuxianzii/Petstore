package org.csu.mypetstore.web.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.AddItem;
import org.csu.mypetstore.service.AddItemService;

@WebServlet(name = "AddItemServlet")
public class AddItemServlet extends HttpServlet {
    Account account;
    private String username;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        account = (Account) session.getAttribute("account");
        username = account.getUsername();

        AddItemService addItemService = new AddItemService();
        List<AddItem> cartlist = addItemService.getCartListByUsernamet(username);
        AddItem addItem = addItemService.getMycart(username);
        session.setAttribute("cartlist",cartlist);
        session.setAttribute("addItem",addItem);

        request.getRequestDispatcher("NewCart.jsp").forward(request,response);

    }
}
