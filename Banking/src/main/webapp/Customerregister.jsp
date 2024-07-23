<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>
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
            justify-content: center;
            align-items: center;
            font-family: 'Roboto', sans-serif;
        }
        .registration-container {
            width: 100%;
            max-width: 900px;
            padding: 30px;
            margin-left:100px;
            background: #fff;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.5);
    background-position: center;
            box-shadow: 0 0 20px rgba(0, 0, 0, 2.0);
        }
        .registration-container h2 {
            margin-bottom: 20px;
            font-size: 32px;
            font-family: 'Georgia', serif;
            color: #6a11cb;
        }
        .form-group label {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }
        .form-control {
            font-size: 16px;
        }
        .form-check-label {
            font-size: 16px;
            font-weight: bold;
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
    <div class="container">
        <div class="registration-container">
            <h2 class="text-center">Customer Registration</h2>
            <form action="CustomerServlet" method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="fullName">Full Name</label>
                        <input type="text" class="form-control" id="fullName" name="fullName" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="address">Address</label>
                        <textarea class="form-control" id="address" name="address" rows="1" required></textarea>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="mobileNo">Mobile No</label>
                        <input type="text" class="form-control" id="mobileNo" name="mobileNo" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="email">Email ID</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="accountType">Type of Account</label>
                        <select class="form-control" id="accountType" name="accountType" required>
                            <option value="Saving">Saving Account</option>
                            <option value="Current">Current Account</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="initialBalance">Initial Balance (min 1000)</label>
                        <input type="number" class="form-control" id="initialBalance" name="initialBalance" min="1000" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="dob">Date of Birth</label>
                        <input type="date" class="form-control" id="dob" name="dob" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="idProof">ID Proof</label>
                        <input type="text" class="form-control" id="idProof" name="idProof" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="aadharNo">Id Number</label>
                        <input type="text" class="form-control" id="aadharNo" name="aadharNo" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Gender</label><br>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" id="genderMale" value="Male" required>
                            <label class="form-check-label" for="genderMale">Male</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" id="genderFemale" value="Female" required>
                            <label class="form-check-label" for="genderFemale">Female</label>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </form>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
