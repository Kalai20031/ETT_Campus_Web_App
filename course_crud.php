<?php
include "db.php";

if (isset($_POST['add_course'])) {

    $name     = trim($_POST['course_name'] ?? '');
    $duration = trim($_POST['duration'] ?? '');
    $credits  = trim($_POST['credits'] ?? '');
    $desc     = trim($_POST['description'] ?? '');

    // 🔴 Validation
    if (
        $name === '' ||
        $duration === '' ||
        $credits === '' ||
        $desc === ''
    ) {
        echo "<script>
                alert('Please fill all fields');
                window.location.href='course.html';
              </script>";
        exit();
    }

    // 🟢 Insert data
    $sql = "INSERT INTO courses (course_name, duration_years, credits, description)
            VALUES (?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);

    if ($stmt) {
        $stmt->bind_param("siis", $name, $duration, $credits, $desc);

        if ($stmt->execute()) {
            echo "<script>
                    alert('Course added successfully');
                    window.location.href='course.html';
                  </script>";
        } else {
            echo "<script>
                    alert('Insert failed');
                    window.location.href='course.html';
                  </script>";
        }

        $stmt->close();
    }
}

$conn->close();
?>
