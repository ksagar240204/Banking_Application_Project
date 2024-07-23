<%@ page import="com.mohan.model.Customer" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Dashboard</title>
    
    <!-- Bootstrap CSS link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
   
    <style>
        body {
             background-image: url("https://getlegalindia.com/wp-content/uploads/2021/10/what-is-provident-fund.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            background-position: center calc(40% - 5px); 
            padding: 20px;
        }

        .dashboard-container {
            max-width: 600px;
            margin: auto;
            margin-top:100px;
            padding: 30px;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.5);
    		background-position: center;
            box-shadow: 0 0 20px rgba(0, 0, 0, 2.0);

            text-align: center;
        }

        .dashboard-container h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .btn-custom {
            display: block;
            width: 100%;
            margin-bottom: 20px;
            padding: 15px;
            font-size: 18px;
            color: #fff;
            background: linear-gradient(to right, #667eea, #764ba2);
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background 0.3s ease;
        }

        .btn-custom:hover {
            background: linear-gradient(to right, #564cbf, #664399);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="dashboard-container">
            <h2>Hello, <%= ((Customer) session.getAttribute("user")).getFullName() %></h2>
            <h2>Customer Dashboard</h2>
            
            <a href="ResetPassword.jsp" class="btn btn-custom">Reset Password</a>
            <a href="WithDraw.jsp" class="btn btn-custom">Withdraw</a>
            <a href="DepositAmount.jsp" class="btn btn-custom">Deposit</a>
            <a href="Balance.jsp" class="btn btn-custom">Check Balance</a>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies (for optional features) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js" integrity="sha384-tB5QR8GC7k2mN3k3XF9HTG1vZHeaC2q0jG9s2weUJj3MBYbq5YjzjqGxSQCCZsfG" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+pyRlTNUBAsw2P/XQ/sG+1KGvZsWYgqxiD6" crossorigin="anonymous"></script>
</body>
</html>
