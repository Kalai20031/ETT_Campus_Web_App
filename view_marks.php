<?php
include "db.php"; // Include database connection
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Marks List</title>
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
            background-color: #007BFF;
            color: white;
        }
        tr:nth-child(even){
            background-color: #f2f2f2;
        }
        a.back-btn {
            display: inline-block;
            margin-top: 15px;
            padding: 8px 12px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a.back-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<h2>Marks List</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Student Name</th>
        <th>Subject Name</th>
        <th>Lecturer Name</th>
        <th>Marks Obtained</th>
        <th>Total Marks</th>
    </tr>

<?php
// Fetch marks along with student, subject, and lecturer names
$sql = "SELECT 
            m.mark_id, 
            s.student_name, 
            sub.subject_name, 
            l.lecturer_name, 
            m.marks_obtained, 
            m.total_marks
        FROM marks m
        JOIN students s ON m.student_id = s.student_id
        JOIN subjects sub ON m.subject_id = sub.subject_id
        JOIN lecturers l ON m.lecturer_id = l.lecturer_id
        ORDER BY m.mark_id ASC";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>{$row['mark_id']}</td>
                <td>{$row['student_name']}</td>
                <td>{$row['subject_name']}</td>
                <td>{$row['lecturer_name']}</td>
                <td>{$row['marks_obtained']}</td>
                <td>{$row['total_marks']}</td>
              </tr>";
    }
} else {
    echo "<tr><td colspan='6'>No records found</td></tr>";
}

$conn->close();
?>

</table>

<a href="index.php" class="back-btn">⬅ Back</a>

</body>
</html>
