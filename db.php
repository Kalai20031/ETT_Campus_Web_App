<?php
$host = "localhost";
$user = "root";       // default XAMPP username
$pass = "";           // default XAMPP password
$db   = "ett_campus"; // database name

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
