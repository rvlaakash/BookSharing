<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="js/AJAX.js"></script>
    <link rel="stylesheet" href="./css/<?php echo $css_file_name ?>.css">
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="css/navbar.css">

    <title><?php echo $title; ?></title>
</head>

<body>
    <header>
        <div class="logo_container">
            <img src="./img/logo.png" alt="">
        </div>

        <ul id="navbar">
            <li><a href="index.php" onclick="showHome()">Home</a></li>
            <li><a href="SellBook.php">Sell</a></li>
            <li><a href="chat.php">Chat</a></li>
            <li><a href=""><img src="img/notification_icon.svg" alt=""></a></li>
            <li>
                <a href="profilepage.php"><img src="./img/profile.png" alt=""></a>
            </li>
        </ul>

        <ul id="burger" onclick="showNavbar()">
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </header>
    <script defer>
        let navbar = document.querySelector("#navbar");
        let burger = document.querySelector("#burger");

        function showNavbar() {
            if (navbar.style.transform == '')
                navbar.style.transform = " translateX(0%) scaleX(1)";
            else
                navbar.style.transform = "";

            burger.classList.toggle("cancel");
        }

        function showHome() {
            burger.classList.remove("cancel");
            navbar.style.transform = "";
        }
    </script>