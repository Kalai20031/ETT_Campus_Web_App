<?php
include "db.php"; // Include database connection
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lecturer List</title>
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
            background-color: #17a2b8;
            color: white;
        }
        tr:nth-child(even){
            background-color: #f2f2f2;
        }
        a.back-btn {
            display: inline-block;
            margin-top: 15px;
            padding: 8px 12px;
            background-color: #17a2b8;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a.back-btn:hover {
            background-color: #138496;
        }
    </style>
</head>
<body>

<h2>Lecturer List</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>NIC</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Department</th>
    </tr>

<?php
$sql = "SELECT * FROM lecturers ORDER BY lecturer_id ASC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>{$row['lecturer_id']}</td>
                <td>{$row['lecturer_name']}</td>
                <td>{$row['nic']}</td>
                <td>{$row['email']}</td>
                <td>{$row['phone']}</td>
                <td>{$row['department']}</td>
              </tr>";
    }
} else {
    echo "<tr><td colspan='6'>No records found</td></tr>";
}

$conn->close();
?>

</table>

<a href="lecturer.html" class="back-btn">⬅ Back</a>

</body>
</html>
