<?php
session_start();
if(!isset($_SESSION['admin_id'])){
    header("Location: login.html");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>ETT Campus Dashboard</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
    <h1>Welcome, <?php echo $_SESSION['username']; ?>!</h1>
</header>

<nav>
    <a href="index.php">Dashboard</a>
    <a href="student.html">Students</a>
    <a href="lecturer.html">Lecturers</a>
    <a href="course.html">Courses</a>
    <a href="subject.html">Subjects</a>
    <a href="marks.html">Marks</a>
    <a href="logout.php" style="margin-left:auto;background:#e74c3c;">Logout</a>
</nav>

<div class="container">
    <h2>ETT Campus Management System</h2>
    <p style="text-align:center;">Use the menu above to manage Students, Lecturers, Courses, Subjects, and Marks.</p>
</div>


    <center> <img src="Capture.PNG" alt="ETT Campus"> </center>


<footer>
    © 2025 ETT Campus. All Rights Reserved.
</footer>

</body>
</html>
