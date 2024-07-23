<%@ page import="com.mohan.model.Customer" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deposit</title>
    
    <!-- Bootstrap CSS link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    
    <!-- Custom CSS for styling -->
    <style>
        body {
           background-image: url("https://getlegalindia.com/wp-content/uploads/2021/10/what-is-provident-fund.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            background-position: center calc(40% - 5px);
            padding: 20px;
            margin-top:100px;
        }
        
        .form-container {
            max-width: 500px;
            margin: auto;
           background-color: rgba(255, 255, 255, 0.5);
    		background-position: center;
            box-shadow: 0 0 20px rgba(0, 0, 0, 2.0);
            padding: 30px;
            border-radius: 10px;
        }
        
        .form-control {
            margin-bottom: 20px;
        }
         h2{
        text-align:center;}
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2 class="text-dark">Hello, <%= ((Customer) session.getAttribute("user")).getFullName() %></h2><br>
            <h2 class="text-dark">Deposit</h2>
            <form action="WithDraw" method="post">
                <div class="form-group text-dark">
                    <label for="accountNumber">Account Number:</label>
                    <input type="text" class="form-control" id="accountNumber" name="accNumber" value="<%= ((Customer) session.getAttribute("user")).getAccountNumber() %>" readonly>
                </div>
                <div class="form-group text-dark">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="form-group text-dark">
                    <label for="amount">Amount to be Deposit.</label>
                    <input type="text" class="form-control" id="amount" name="amountDeposit" required>
                </div>
                <button type="submit" class="btn btn-primary">Deposit</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies (for optional features) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js" integrity="sha384-tB5QR8GC7k2mN3k3XF9HTG1vZHeaC2q0jG9s2weUJj3MBYbq5YjzjqGxSQCCZsfG" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+pyRlTNUBAsw2P/XQ/sG+1KGvZsWYgqxiD6" crossorigin="anonymous"></script>
</body>
</html>
