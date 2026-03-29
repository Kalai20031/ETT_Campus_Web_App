<?php
include "db.php"; // Include database connection
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Course List</title>
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
            background-color: #28a745;
            color: white;
        }
        tr:nth-child(even){
            background-color: #f2f2f2;
        }
        a.back-btn {
            display: inline-block;
            margin-top: 15px;
            padding: 8px 12px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a.back-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<h2>Course List</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Course Name</th>
        <th>Duration (Years)</th>
        <th>Credits</th>
        <th>Description</th>
    </tr>

<?php
$sql = "SELECT * FROM courses ORDER BY course_id ASC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>{$row['course_id']}</td>
                <td>{$row['course_name']}</td>
                <td>{$row['duration_years']}</td>
                <td>{$row['credits']}</td>
                <td>{$row['description']}</td>
              </tr>";
    }
} else {
    echo "<tr><td colspan='5'>No records found</td></tr>";
}

$conn->close();
?>

</table>

<a href="course.html" class="back-btn">⬅ Back</a>

</body>
</html>
