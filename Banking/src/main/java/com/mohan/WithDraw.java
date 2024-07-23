package com.mohan;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mohan.model.Customer;
import com.mohan.model.DAO.CustomerDAO;

/**
 * Servlet implementation class WithDraw
 */
public class WithDraw extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String accNumber = request.getParameter("accNumber");
	    String password = request.getParameter("password");
	    String amountStr = request.getParameter("amountwithdraw");
	    String amounttoDepositStr = request.getParameter("amountDeposit");
	    
	    if (accNumber == null || accNumber.isEmpty() || password == null || password.isEmpty()) {
	        request.setAttribute("error", "Username and Password cannot be empty");
	        RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
	        rd.forward(request, response);
	        return;
	    }

	    CustomerDAO dao = new CustomerDAO();
	    Customer cus = dao.getByAccountNumber(accNumber);
	    if (cus == null || !cus.getPassword().equals(password)) {
	        request.setAttribute("error", "Invalid username or password");
	        RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
	        rd.forward(request, response);
	        return;
	    }

	    BigDecimal initialBalance = cus.getInitialBalance();
	    BigDecimal amount = BigDecimal.ZERO;
	    BigDecimal amounttoDeposit = BigDecimal.ZERO;

	    if (amountStr != null && !amountStr.isEmpty()) {
	        amount = new BigDecimal(amountStr);
	        // Check if the amount is valid
	        if (amount.compareTo(BigDecimal.ZERO) <= 0) {
	            request.setAttribute("error", "Invalid withdrawal amount");
	            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
	            rd.forward(request, response);
	            return;
	        }
	        // Check if there is sufficient balance for withdrawal
	        if (initialBalance.compareTo(amount) < 0) {
	            request.setAttribute("error", "Insufficient balance");
	            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
	            rd.forward(request, response);
	            return;
	        }
	        // Subtract the withdrawal amount from the balance
	        initialBalance = initialBalance.subtract(amount);
	    }

	    if (amounttoDepositStr != null && !amounttoDepositStr.isEmpty()) {
	        amounttoDeposit = new BigDecimal(amounttoDepositStr);
	        // Check if the deposit amount is valid
	        if (amounttoDeposit.compareTo(BigDecimal.ZERO) <= 0) {
	            request.setAttribute("error", "Invalid deposit amount");
	            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
	            rd.forward(request, response);
	            return;
	        }
	        // Add the deposit amount to the balance
	        initialBalance = initialBalance.add(amounttoDeposit);
	    }

	    // Update the customer's balance in the database
	    cus.setInitialBalance(initialBalance);
	    dao.updateCustomer(cus);

	    // Set success message and forward to success page
	    HttpSession session = request.getSession();
	    session.setAttribute("success", "Transaction successful. New Balance: " + cus.getInitialBalance());
	    RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
	    rd.forward(request, response);
	}
}
