<?php
$serverName = "localhost";
$userName = "root";
$password = "";
$databaseName = "book_sharing";
$connection = mysqli_connect($serverName, $userName, $password);

$databaseQuery = "CREATE DATABASE IF NOT EXISTS $databaseName;";
$db = mysqli_query($connection, $databaseQuery);
if (!$db) {
    echo "Database not created<br>";
    exit;
} else {
    echo "Database created Successfully<br>";
    mysqli_select_db($connection, $databaseName);
}

$admin =  "CREATE TABLE IF NOT EXISTS admin( 
        admin_id INT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'This is admin id',
        admin_name VARCHAR (255) NOT NULL COMMENT 'This is admin name',
        admin_email VARCHAR (255) NOT NULL COMMENT 'This is admin email id',
        admin_password VARCHAR (255) NOT NULL COMMENT 'This is admin password' )";

$user = "CREATE TABLE IF NOT EXISTS user( 
        user_id INT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'This is user id',
		fname VARCHAR(255) NOT NULL COMMENT 'This is user full name',
        user_name VARCHAR (255) NOT NULL COMMENT 'This is user name',
        user_email VARCHAR (255) NOT NULL COMMENT 'This is user email id',
        user_password VARCHAR (255) NOT NULL COMMENT 'This is user password',
        address VARCHAR (255) NOT NULL COMMENT 'This is user address',
        pincode INT(20) NOT NULL COMMENT 'This is user pincode',
        created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'This is user account created date',
        user_dob date NOT NULL COMMENT 'This is user date of birth')";

$book_transaction = "CREATE TABLE IF NOT EXISTS book_transaction(
        book_id INT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'This is book id',
        book_name VARCHAR (255) NOT NULL COMMENT 'This is book name',
        book_title VARCHAR(255) NOT NULL COMMENT 'This is book title',
        book_author VARCHAR (255) NOT NULL COMMENT 'This is book\'s Author name',
        book_publisher VARCHAR (255) NOT NULL COMMENT 'This is book\'s publisher name',
        book_coverpage VARCHAR(255) NOT NULL COMMENT 'This is image of book cover',
        book_publich_date date NOT NULL COMMENT 'This is book publish date',
        book_description text NOT NULL COMMENT 'This is book decription',
        seller_id INT(20) NOT NULL COMMENT 'This is seller id of book')";

$book_transaction_history = "CREATE TABLE IF NOT EXISTS book_transaction_history(
        book_id INT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'This is book id',
        book_name VARCHAR (255) NOT NULL COMMENT 'This is book name',
        book_title VARCHAR(255) NOT NULL COMMENT 'This is book title',
        book_author VARCHAR (255) NOT NULL COMMENT 'This is book\'s Author name',
        book_publisher VARCHAR (255) NOT NULL COMMENT 'This is book\'s publisher name',
        book_coverpage VARCHAR(255) NOT NULL COMMENT 'This is image of book cover',
        book_publich_date date NOT NULL COMMENT 'This is book publish date',
        book_description text NOT NULL COMMENT 'This is book decription',
        seller_id INT(20) NOT NULL COMMENT 'This is seller id of book',
        buyer_id INT(20) NOT NULL COMMENT 'This is buyer id of book')";

$delivery_guy = "CREATE TABLE IF NOT EXISTS delivery_guy( 
        delivery_guy_id INT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'This is user id',
        delivery_guy_name VARCHAR (255) NOT NULL COMMENT 'This is delivery guy name',
        delivery_guy_email VARCHAR (255) NOT NULL COMMENT 'This is delivery guy email id',
        delivery_guy_password VARCHAR (255) NOT NULL COMMENT 'This is delivery guy password',
        delivery_guy_dob date NOT NULL COMMENT 'This is user date of birth',
        address VARCHAR (255) NOT NULL COMMENT 'This is delivery guy address',
        pincode INT(20) NOT NULL COMMENT 'This is delivery guy pincode')";

$restrict_user = "CREATE TABLE IF NOT EXISTS restrict_user( 
        restrict_user_id INT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'This is restricted user id',
        restrict_user_name VARCHAR (255) NOT NULL COMMENT 'This is restricted user name',
        restrict_user_email VARCHAR (255) NOT NULL COMMENT 'This is restricted user email id')";

$tables = array(
    "admin_table" => $admin,
    "book_transaction_table" => $book_transaction,
    "user_table" => $user,
    "dilevery_guy_table" => $delivery_guy,
    "resticted_user_table" => $restrict_user,
    "book_transaction_history_table" => $book_transaction_history
);

foreach ($tables as $tableName => $sqlQuery) {
    $result = mysqli_query($connection, $sqlQuery);
    if (!$result) {
        echo "$tableName is Not created Successfully<br> " . mysqli_error($connection) . "<br>";
    } else {
        echo "$tableName is created successfully<br>";
    }
}
