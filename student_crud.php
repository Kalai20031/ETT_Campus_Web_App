<?php
include "db.php";

if (isset($_POST['add_student'])) {

    $name   = trim($_POST['student_name'] ?? '');
    $nic    = trim($_POST['nic'] ?? '');
    $course = trim($_POST['course'] ?? '');
    $email  = trim($_POST['email'] ?? '');
    $phone  = trim($_POST['phone'] ?? '');
    $gender = trim($_POST['gender'] ?? '');

    // 🔴 Validation
    if (
        $name === '' ||
        $nic === '' ||
        $course === '' ||
        $email === '' ||
        $phone === '' ||
        $gender === ''
    ) {
        echo "<script>
                alert('Please fill all fields');
                window.location.href='student.html';
              </script>";
        exit();
    }

    // 🟢 Insert data
    $sql = "INSERT INTO students (student_name, nic, course, email, phone, gender)
            VALUES (?, ?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);

    if ($stmt) {
        $stmt->bind_param("ssssss", $name, $nic, $course, $email, $phone, $gender);

        if ($stmt->execute()) {
            echo "<script>
                    alert('Student registered successfully');
                    window.location.href='student.html';
                  </script>";
        } else {
            echo "<script>
                    alert('Insert failed');
                    window.location.href='student.html';
                  </script>";
        }

        $stmt->close();
    }
}

$conn->close();
?>
