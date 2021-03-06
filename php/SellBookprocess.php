<?php
require "dbconfig.php";
session_start();

if (empty($_FILES["coverimg"]['name']) || empty($_POST["bname"]) || empty($_POST["bauthor"]) || empty($_POST["byear"]) || empty($_POST["bprice"])) {
  echo "ALL field required";
  exit();
} else {

  $image = $_FILES['coverimg']['name'];
  $imageArr = explode('.', $image);
  $rand = rand(10000, 99999);
  $newImageName = $imageArr[0] . $rand . '.' . $imageArr[1];
  $uploadPath = "media/Book_cover_image/" . $newImageName;
  $isUploaded = move_uploaded_file($_FILES["coverimg"]["tmp_name"], "../" . $uploadPath);

  if ($isUploaded)
    $book_cover = $uploadPath;
  else
    $book_cover = "";

  $book_name = $_POST['bname'];
  $book_author = $_POST['bauthor'];
  $book_description = $_POST['bdesc'];
  $book_publish_year = $_POST['byear'];
  $book_price = $_POST['bprice'];

  if (!mysqli_error($con)) {
    $sql = "INSERT INTO book_transaction(book_name,book_price,book_author,book_publish_year,book_description,book_coverpage,seller_id) VALUES('$book_name',$book_price,'$book_author',$book_publish_year,'$book_description','$book_cover',{$_SESSION['userID']})";
    mysqli_query($con, $sql);
    echo "Success";
  } else {
    echo  "Connection erro" . mysqli_error($con);
  }
}
