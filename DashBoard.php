<!DOCTYPE html>
<html lang="en">
<head>
	<?php
		require "php/LoginCheck.php";
	?>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="css/DashBoard.css">
</head>
<body>
	<div id="container">
		<div id="nav">
			<nav>
				<ul>
	   				<a href=""><li>Dashboard</li></a>
					<a href=""><li>About Us</li></a>
					<a href=""><li>Contact Us</li></a>
					<a href="chat.php"><li>chatting Section</li></a>
					<a href="Dashboard.php?logout=true" onclick="lgout()"><li>LOGOUT</li></a>
				</ul>
			</nav>
		</div>

		<div id="maincontainer">
			<form id="searchbar" method="post" onsubmit="return false;">
				<input type="search"  name="searchkeyword" placeholder="Search Book"  onkeyup="search()"> 
			</form>
				<div class="filter">
					<select name="" id="dropdownfilter">
						<optgroup label="By Time">
							<option value="">New</option>
							<option value="">old</option>
						</optgroup>
                    </select>

               		<select>
						<optgroup label="Type">
							<option value="">Educational</option>
							<option value="">Comices</option>		
							<option value="">Cooking</option>
							<option value="">Genral-Knowaldge</option>
						</optgroup>
					</select>
				</div>	

		</div>
	<div id="Booksection">
		<?php 
			require "php/dbconfig.php";
			$FetchAllData = "SELECT * from user INNER JOIN book_transaction ON user.user_id = book_transaction.seller_id";
			$result = mysqli_query($con,$FetchAllData);
				while($row = mysqli_fetch_assoc($result)){
					echo '<div class="book">';
					echo '<div class="userinfo">';
					echo "<div class='dp'><img src='".$row['Profile_photo']."'></div>";
					echo "<div class='username'><span>".$row['user_name']."</span></div>";
					echo '</div>';
					echo '<div class="bookimg">';
					echo '<img src="'.$row['book_coverpage'].'">';
					echo '</div>';
					echo '<div class="bookDetails">';
					echo '<label>Name:'.$row['book_name'].'</label><br>';
					echo '<label>Author:'.$row['book_author'].'</label><br>';
					echo '<label>Price:'.$row['book_price'].'</label><br>';
					echo '<label>Description:'.$row['book_description'].'</label><br>';
					echo '</div>';
					echo '<div class ="options">';
					echo '<button class="optionbtn">Buy</button>';
					echo '<button class="optionbtn" onclick="chattouser('.$row["user_id"].')">Chat</button>';
					echo '<button class="optionbtn">Report</button>';
					echo '</div>';
					echo '</div>';
				}
		?>

	</div>
	<div id="footer">
		<footer>
			<span>CopyRight climd by jainil prajpati</span>
		</footer>
	</div>
</div>
</body>
<script type="text/javascript" src="js/ajax.js" async></script>
<script type="text/javascript">
	function chattouser(id){
    window.location.replace("chat.php?id="+id);
}
</script>
</html>
