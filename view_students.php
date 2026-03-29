<?php
include "db.php"; // Include database connection
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f8f9fa;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #221a02ff; /* Yellow header */
            color: white;
        }
        tr:nth-child(even){
            background-color: #f2f2f2;
        }
        a.back-btn {
            display: inline-block;
            margin-top: 15px;
            padding: 8px 12px;
            background-color: #221a02ff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a.back-btn:hover {
            background-color: #221a02ff;
        }
    </style>
</head>
<body>

<h2>Student List</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>NIC</th>
        <th>Course</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Gender</th>
    </tr>

<?php
$sql = "SELECT * FROM students ORDER BY student_id ASC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>{$row['student_id']}</td>
                <td>{$row['student_name']}</td>
                <td>{$row['nic']}</td>
                <td>{$row['course']}</td>
                <td>{$row['email']}</td>
                <td>{$row['phone']}</td>
                <td>{$row['gender']}</td>
              </tr>";
    }
} else {
    echo "<tr><td colspan='7'>No records found</td></tr>";
}

$conn->close();
?>

</table>

<a href="student.html" class="back-btn">⬅ Back</a>

</body>
</html>
