package org.example.servlet;

import org.example.service.UserService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteController", urlPatterns = {"/delete"})
public class DeleteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        var userId = Long.parseLong(request.getParameter("id"));

        var controller = new UserService();
        controller.deleteUser(userId);

        response.sendRedirect("list");
    }
}
