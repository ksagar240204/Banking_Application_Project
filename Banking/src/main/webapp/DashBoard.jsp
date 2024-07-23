
<!DOCTYPE html>
<%@page import="com.mohan.model.Mohan"%>
<%@page import="java.util.List"%>
<%@page import="com.mohan.model.DAO.CustomerDAO"%>
<%@page import="com.mohan.model.Customer"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Customers</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
            font-family:monospace;
        }
        h1 {
            font-family: 'Georgia', serif;
            color: #fff;
        }
        .navbar {
            margin-bottom: 20px;
        }
        .navbar-brand, .nav-link {
            font-size: 24px;
          
        }
        .btn-custom {
            background-color: #007bff;
            color: white;
        }
        .btn-custom:hover {
            background-color: #0056b3;
            color: white;
        }
        .table-responsive {
             background-color: rgba(255, 255, 255, 0.5);
    background-position: center;
            box-shadow: 0 0 20px rgba(0, 0, 0, 2.0);
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .container-fluid {
           background-image: url("https://getlegalindia.com/wp-content/uploads/2021/10/what-is-provident-fund.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            background-position: center calc(40% - 5px); 
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
          
        }
        .form-group label {
            font-size: 18px;
            font-weight: bold;
        }
        .form-control {
            font-size: 16px;
        }
        .btn-primary {
            background-color: #6a11cb;
            border: none;
            font-size: 18px;
        }
        .btn-primary:hover {
            background-color: #5a0fbf;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand text-dark">Admin Dashboard</a>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="AdminLanding.jsp">Admin Page</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container-fluid">
    <h1 class="mt-4 text-center text-dark">View Customers</h1>
    <div class="text-center mb-4">
        <h2 class="mt-4">Hello, <%
            Mohan m1 = (Mohan) session.getAttribute("user");
            out.println(m1.getUsername());
        %></h2>
    </div>


    <div class="table-responsive mt-4">
        <table class="table table-bordered table-striped table-hover mt-2">
            <thead class="thead-dark mt-1">
                <tr class="text-center mt-4">
                    <th>No.</th>
                    <th>Full Name</th>
                    <th>Address</th>
                    <th>Mobile No</th>
                    <th>Email</th>
                    <th>Account Type</th>
                    <th>Balance</th>
                    <th>Date of Birth</th>
                    <th>ID Proof</th>
                    <th>Aadhar No</th>
                    <th>Gender</th>
                    <th>Account Number</th>
                    <th>Password</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    CustomerDAO dao = new CustomerDAO();
                    List<Customer> customers = (List<Customer>) request.getAttribute("customers");
                    if (customers == null) {
                        customers = dao.getAllCustomers();
                    }
                    int i = 1;
                    for (Customer customer : customers) {
                %>
                <tr>
                    <td><%= i++ %></td>
                    <td><%= customer.getFullName() %></td>
                    <td><%= customer.getAddress() %></td>
                    <td><%= customer.getMobileNo() %></td>
                    <td><%= customer.getEmail() %></td>
                    <td><%= customer.getAccountType() %></td>
                    <td><%= customer.getInitialBalance() %></td>
                    <td><%= customer.getDob() %></td>
                    <td><%= customer.getIdProof() %></td>
                    <td><%= customer.getAadharNo() %></td>
                    <td><%= customer.getGender() %></td>
                    <td><%= customer.getAccountNumber() %></td>
                    <td><%= customer.getPassword() %></td>
                    <td>
                        <a href="UpdateCustomer.jsp?accountNumber=<%= customer.getAccountNumber() %>" class="btn btn-warning btn-sm me-2">Update</a>
                        <a href="DeleteCustomerServlet?accountNumber=<%= customer.getAccountNumber() %>" class="btn btn-danger btn-sm mt-2">Delete</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
