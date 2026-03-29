<?php
include "db.php"; // Include database connection
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Subject List</title>
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
            background-color: #6f42c1; /* Purple header */
            color: white;
        }
        tr:nth-child(even){
            background-color: #f2f2f2;
        }
        a.back-btn {
            display: inline-block;
            margin-top: 15px;
            padding: 8px 12px;
            background-color: #6f42c1;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a.back-btn:hover {
            background-color: #5936a2;
        }
    </style>
</head>
<body>

<h2>Subject List</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Subject Name</th>
        <th>Course Name</th>
        <th>Credits</th>
        <th>Semester</th>
    </tr>

<?php
// Join subjects with courses to show course names instead of IDs
$sql = "SELECT sub.subject_id, sub.subject_name, c.course_name, sub.credits, sub.semester
        FROM subjects sub
        JOIN courses c ON sub.course_id = c.course_id
        ORDER BY sub.subject_id ASC";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>{$row['subject_id']}</td>
                <td>{$row['subject_name']}</td>
                <td>{$row['course_name']}</td>
                <td>{$row['credits']}</td>
                <td>{$row['semester']}</td>
              </tr>";
    }
} else {
    echo "<tr><td colspan='5'>No records found</td></tr>";
}

$conn->close();
?>

</table>

<a href="subject.html" class="back-btn">⬅ Back</a>

</body>
</html>
