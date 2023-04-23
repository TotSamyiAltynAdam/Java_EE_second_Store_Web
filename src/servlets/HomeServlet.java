package servlets;

import db.DBConnection;
import db.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Item> itemsList = DBConnection.getItems();
        request.setAttribute("items",itemsList);

        request.getRequestDispatcher("/main.jsp").forward(request, response);
    }
}
