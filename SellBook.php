<?php
require "php/LoginCheck.php";
require "php/navbar.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sell Book</title>
  <script src="js/AJAX.js"></script>
  <link rel="stylesheet" href="./css/SellBook.css">
  <link rel="stylesheet" href="./css/navbar.css">
  <link rel="stylesheet" href="./css/common.css">
</head>

<body>
  <div class="container">
    <div class="title">Sell Book</div>
    <div class="content">
      <form action="#" onsubmit="return false" id="sell-form" enctype="multipart/form-data">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Book Cover Image
              <input type="file" name="coverimg" id="UploadCover" style="display: block;" accept="image/x-png,image/gif,image/jpeg">
            </span>
          </div>

          <div class="input-box">
            <span class="details">Book Name
              <input type="text" name="bname" id="">
            </span>
          </div>

          <div class="input-box">
            <span class="details">Book Author
              <input type="text" name="bauthor" id="">
            </span>
          </div>

          <div class="input-box">
            <span class="details">Publish Year
              <input type="number" min="1900" max="2022" name="byear" id="">
            </span>
          </div>

          <div class="input-box">
            <span class="details">Book Price
              <input type="number" name="bprice" id="">
            </span>
          </div>

          <div class="input-box">
            <span class="details">Book Description
              <textarea name="bdesc" cols="30" rows="10"></textarea>
            </span>
          </div>
        </div>

        <div class="button">
          <input type="submit" onclick="sellBook()" name="Sell" id="submit" value="Sell">
        </div>

        <div class="input-box" id="error"></div>
      </form>
    </div>
  </div>
  <script src="./js/sellBook.js"></script>
  <?php require'php/footer.php';?>
</body>

</html>