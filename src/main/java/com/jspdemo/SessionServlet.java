package com.jspdemo;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("username");

        // Create session
        HttpSession session = request.getSession();
        session.setAttribute("user", name);

        // Set session expiry to 1 minute (60 seconds)
        session.setMaxInactiveInterval(60);

        // Redirect to JSP
        response.sendRedirect("welcome.jsp");
    }
}