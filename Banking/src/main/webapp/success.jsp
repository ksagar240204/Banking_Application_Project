<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #4e54c8, #8f94fb);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            max-width: 500px;
            padding: 30px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .container h2 {
            margin-bottom: 20px;
            color: #28a745;
        }
        .container p {
            margin-bottom: 20px;
            color: #6c757d;
        }
        .btn-primary {
            background-color: #4e54c8;
            border: none;
        }
        .btn-primary:hover {
            background-color: #8f94fb;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Success</h2>
        <p><%
            String successMessage = (String) session.getAttribute("success");
            if (successMessage != null) {
                out.println(successMessage);
            } else {
                out.println("Operation completed successfully.");
            }
        %></p>
        <a href="CustomerDashBoard.jsp" class="btn btn-primary">Go back to Dashboard</a>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
