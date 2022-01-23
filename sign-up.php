<!DOCTYPE html>

<head>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/common.css">
</head>

<body id="main">
    <form enctype="multipart/form-data" id="signup" method="POST">
        <span>Sign Up</span>
        <div class="userinput">
            <div id="error">
                <p id="error-msg"></p>
            </div>
        </div>

        <div class="userinput">
            <input class="u_name" name="name" placeholder="Enter Full Name" type="text">
        </div>

        <div class="userinput">
            <input autocomplete="off" class="us_name" name="username" placeholder="Enter username" type="text">
        </div>

        <div class="userinput">
            <input class="u_mail" name="email" placeholder="Example123@gmail.com" type="text">
        </div>

        <div class="userinput">
            <input class="u_addr" name="address" placeholder="Enter Adderss" type="text">
        </div>

        <div class="userinput">
            <input class="u_pincode" name="pincode" placeholder="Enter pincode" type="text">
        </div>

        <div class="userinput password">
            <input autocomplete="off" class="u_password" name="pass" placeholder="password" type="password">
            <img class="passshow" onclick="passhw()" src="img/password_not_show.svg">
        </div>

        <div class="userinput">
            <button class="lgbtn" onclick="signUpFunction()" type="button">Sign Up</button>
        </div>
        <div class="userinput">
            <span class="oldac">Already Have Account?
                <a href="#" onclick="change('login.php')">LOGIN</a>
            </span>
        </div>
    </form>
    <script src="js/AJAX.js"></script>
    <script src="js/loginSignUp.js"></script>
</body>

</html>