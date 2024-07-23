<%@page import="com.mohan.model.Mohan"%>
<%@page import="java.util.List"%>
<%@page import="com.mohan.model.DAO.CustomerDAO"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Check session for authentication
    Mohan adminUser = (Mohan) session.getAttribute("user");
    if (adminUser == null) {
        response.sendRedirect("login.jsp"); // Redirect to login if not authenticated
    }
%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url("https://getlegalindia.com/wp-content/uploads/2021/10/what-is-provident-fund.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            background-position: center calc(40% - 5px);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            font-family: Arial, sans-serif;
            color: #fff;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.5);
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 2.0);
            padding: 30px;
            margin-top: 100px;
            max-width:500px;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
            color:black;
        }
        .registration-link {
            font-size: 14px;
            color: #007bff;
            text-decoration: none;
            display: inline-block;
            border-bottom: 1px dashed #007bff;
        }
        .registration-link:hover {
            color: #0056b3;
            border-bottom: 1px dashed #0056b3;
        }
        .search-form {
            margin-bottom: 20px;
            text-align: center;
        }
        .search-form input[type="text"] {
            width: 300px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 10px;
        }
        .search-form button {
            padding: 10px 20px;
            border: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        .search-form button:hover {
            background-color: #0056b3;
        }
        .navbar {
            margin-bottom: 20px;
        }
        .navbar-brand {
            font-size: 24px;
        }
        .nav-link {
            font-size: 18px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Admin Dashboard</a>
    <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a class="nav-link" href="logout.jsp">Logout</a>
        </li>
    </ul>
</nav>

<div class="container">
    <div class="header">
        <h1>Welcome, <%= adminUser.getUsername() %></h1><br>
        <a href="Customerregister.jsp" class="registration-link"><h2>Register New Customer</h2></a>
    </div>
    <div class="header">
        <a href="DashBoard.jsp" class="registration-link"><h2>View All Customers</h2></a>
    </div><br>
    <!-- Search Form -->
    <form class="search-form" method="post" action="ViewCustomerServlet">
        <input type="text" name="accnumber" placeholder="Enter Account Number">
        <button type="submit">Search</button>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
