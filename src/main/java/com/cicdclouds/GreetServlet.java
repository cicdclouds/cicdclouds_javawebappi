package com.cicdclouds;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/greet")
public class GreetServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String userName = req.getParameter("userName");
        if (userName == null || userName.trim().isEmpty()) {
            userName = "Guest";
        }
        String greetingMessage = "Hello, " + userName + "! Welcome to cicdclouds.";
        req.setAttribute("greetingMessage", greetingMessage);
        req.getRequestDispatcher("result.jsp").forward(req, resp);
    }
}