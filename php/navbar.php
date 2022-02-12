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
<script async>
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