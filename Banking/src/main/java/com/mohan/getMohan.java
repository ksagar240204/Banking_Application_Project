package com.mohan;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.mohan.model.Mohan;
import com.mohan.model.DAO.MohanDAO;

public class getMohan extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("pass");

        if (username == null || username.isEmpty() || password == null || password.isEmpty()) {
            request.setAttribute("error", "Username and Password cannot be empty");
            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
            rd.forward(request, response);
            return;
        }

        MohanDAO dao = new MohanDAO();
        Mohan m1 = dao.getMohan(username);
        if (m1 == null || !m1.getPassword().equals(password)) {
            request.setAttribute("error", "Invalid username or password");
            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
            rd.forward(request, response);
            return;
        }

        // Create a session and set user attributes
        HttpSession session = request.getSession();
        session.setAttribute("user", m1);
        
        RequestDispatcher rd = request.getRequestDispatcher("AdminLanding.jsp");
        rd.forward(request, response);
    }
    
    
}
