<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script>
        function validateForm() {
            var username = document.forms["loginForm"]["user"].value;
            var password = document.forms["loginForm"]["pass"].value;
            if (username == "" || password == "") {
                alert("Both fields must be filled out");
                return false;
            }
            return true;
        }

        function showForm(formId) {
            document.getElementById('adminLoginForm').style.display = 'none';
            document.getElementById('customerLoginForm').style.display = 'none';
            document.getElementById(formId).style.display = 'block';
        }
    </script>
    <style>
     body {
            font-family: Arial, sans-serif;
            background-image: url("https://wallpaperbat.com/img/359285-open-banking-psd2-gt-software-gt-software.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center calc(40% - 5px);
            margin-right: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-image: url("https://img.freepik.com/free-photo/artistic-blurry-colorful-wallpaper-background_58702-8256.jpg?ga=GA1.1.94112798.1708350103&semt=ais_user");
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 2.0);
            max-width: 400px;
            width: 100%;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .login-container legend {
            margin-bottom: 20px;
            color: #333;
        }

        .login-container .form-group label {
            font-weight: bold;
            color: #333;
        }

        .login-container input {
            margin-bottom: 10px;
            background: rgba(255, 255, 255, 0.1);
            border: none;
            border-radius: 5px;
            color: #333;
        }

        .login-container .btn {
            margin-top: 20px;
            background: #007bff;
            border: none;
            transition: background 0.3s ease;
        }

        .login-container .btn:hover {
            background: #0056b3;
        }

        .login-container .btn:active {
            background: #004494;
        }

        .btn-toggle {
            margin: 5px;
            background: rgba(0, 0, 0, 0.1);
            color: #333;
            border: none;
            transition: background 0.3s ease;
        }

        .btn-toggle:hover {
            background: rgba(0, 0, 0, 0.2);
        }

        .input-group-text {
            background: rgba(0, 0, 0, 0.1);
            border: none;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="text-center mb-4">
            <button class="btn btn-primary btn-toggle" onclick="showForm('adminLoginForm')">Admin Login</button>
            <button class="btn btn-secondary btn-toggle" onclick="showForm('customerLoginForm')">Customer Login</button>
        </div>
        
        <!-- Admin Login Form -->
        <form id="adminLoginForm" name="loginForm" action="getMohan" method="post" onsubmit="return validateForm()" style="display: none;">
            <fieldset>
                <legend class="text-center"><h2>Admin Login<hr></h2></legend>
                <div class="form-group">
                    <label for="adminUsername">Username</label>
                    <div class="input-group">
                     <input type="text" name="user" id="adminUsername" class="form-control" placeholder="Enter your username">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                       
                    </div>
                </div>
                <div class="form-group">
                    <label for="adminPassword">Password</label>
                    <div class="input-group">
                         <input type="password" name="pass" id="adminPassword" class="form-control" placeholder="Enter your password">
                  
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-lock"></i></span>
                        </div>
                     </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Submit</button>
            </fieldset>
        </form>

        <!-- Customer Login Form -->
        <form id="customerLoginForm" name="loginForm" action="getCustomer" method="post" style="display: none;">
            <fieldset>
                <legend class="text-center"><h2>Customer Login<hr></h2></legend>
                <div class="form-group">
                    <label for="customerUsername">Account Number</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" name="accnum" id="customerUsername" class="form-control" placeholder="Enter your Account Number" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="customerPassword">Password</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-lock"></i></span>
                        </div>
                        <input type="password" name="pass" id="customerPassword" class="form-control" placeholder="Enter your password" required>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Submit</button>
            </fieldset>
        </form>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        // Show the default form
        showForm('adminLoginForm');
    </script>
</body>
</html>
