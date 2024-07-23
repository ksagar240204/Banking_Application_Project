package com.mohan;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mohan.model.Customer;
import com.mohan.model.DAO.CustomerDAO;

/**
 * Servlet implementation class ResetPasswordServlet
 */
public class ResetPasswordServlet extends HttpServlet {
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        
	        String newPassword = request.getParameter("password");
	        String confirmPassword = request.getParameter("confirmPassword");
	        String accountNumber = request.getParameter("accNumber");
	
	        if (newPassword.length() != 4 || confirmPassword.length() != 4) {
	            request.setAttribute("error", "Length of the password should be 4.");
	            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
	            rd.forward(request, response);
	            return;
	        }
	        

	        if (!newPassword.equals(confirmPassword)) {
	            request.setAttribute("error", "New Password & Confirm Password is mismatched.");
	            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
	            rd.forward(request, response);
	            return;
	        }
	        
	      
	        
	        Customer customer = new Customer();
	        customer.setPassword(confirmPassword);
	        customer.setAccountNumber(accountNumber);
	        
	        CustomerDAO dao = new CustomerDAO();
	        boolean isUpdated = dao.updatePassword(customer);
	        
	        if (isUpdated) {
	            response.sendRedirect("CustomerDashBoard.jsp");
	        } else {
	            response.sendRedirect("error.jsp");
	        }
	    }
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String accNumber = request.getParameter("accNumber");
		    String password = request.getParameter("password");

		    if (accNumber == null || accNumber.isEmpty() || password == null || password.isEmpty()) {
		        request.setAttribute("error", "Account Number and Password cannot be empty");
		        RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
		        rd.forward(request, response);
		        return;
		    }

		    CustomerDAO dao = new CustomerDAO();
		    Customer cus = dao.getByAccountNumber(accNumber);
		    if (cus == null || !cus.getPassword().equals(password)) {
		        request.setAttribute("error", "Invalid Account Number or Password");
		        RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
		        rd.forward(request, response);
		        return;
		    }

		    // If password is correct, set balance attribute to display in JSP
		    BigDecimal currentBalance = cus.getInitialBalance();
		    request.setAttribute("balance", currentBalance.toString());

		    // Forward to ResetPassword.jsp to display balance
		    RequestDispatcher rd = request.getRequestDispatcher("Balance.jsp");
		    rd.forward(request, response);
	    }
}
