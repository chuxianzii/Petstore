package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


public class AutoComplementServlet extends HttpServlet {
    private String keyword;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         keyword = request.getParameter("keyword");

        CatalogService catalogService = new CatalogService();

        List<Product> productList = catalogService.searchProductList(keyword);

        String json = "[";
        for (int i = 0; i < productList.size(); i++) {
            String word = productList.get(i).getName();

            if (keyword != null) {
                if (word.startsWith(keyword)) {

                    json += "\"" + word + "\"" + ",";

                }

            }
        }

        json = json.substring(0, json.length() - 1 > 0 ? json.length() - 1 : 1);
        json += "]";
        System.out.println("json:" + json);
        System.out.println(productList.size());
        response.setContentType("application/json;charset:utf-8");
        PrintWriter out = response.getWriter();
            out.println(json);
        out.flush();
    }
}
