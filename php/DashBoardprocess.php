<?php 
	session_start();
	require "dbconfig.php";
	$searchkeyword = $_POST['searchkeyword'];
		if(empty($searchkeyword)){
			$where_condition = "1=1";
		}
		else{
			$where_condition = "(book_transaction.book_name like'%$searchkeyword%') OR (book_transaction.book_author 
								like'%$searchkeyword%') OR (user.user_name like '%$searchkeyword%')";
		}
	$search = "SELECT * from user INNER JOIN book_transaction ON user.user_id = book_transaction.seller_id WHERE $where_condition ";
	
	$result = mysqli_query($con,$search);
	$searchres = '';
		while($row = mysqli_fetch_assoc($result)){
			$searchres .= '<div class="book">'
			  	.'<div class="userinfo">'
			  	."<div class='dp'><img src='".$row['Profile_photo']."'></div>"
			  	."<div class='username'><span>".$row['user_name']."</span></div>"
			  	.'</div>'
			  	.'<div class="bookimg">'
			  	.'<img src="imges/bkimg.jpg">'
			  	.'</div>'
			  	.'<div class="bookDetails">'
			  	.'<label>Name:'.$row['book_name'].'</label><br>'
			  	.'<label>Author:'.$row['book_author'].'</label><br>'
			  	.'<label>Price:'.$row['book_price'].'</label><br>'
		      	.'<label>Description:'.$row['book_description'].'</label><br>'
			  	.'</div>'
			  	.'<div class ="options">'
			  	.'<button class="optionbtn">Buy</button>'
			  	.'<button class="optionbtn" onclick="chattouser('.$row["user_id"].')">Chat</button>'
			  	.'<button class="optionbtn">Report</button>'
			  	.'</div>'
			  	.'</div>';
		}
		if(empty($searchres)){
			$searchres = "<h2 style = 'color:red;'>No Book Found</h2>";
		} 
	echo $searchres;
?>