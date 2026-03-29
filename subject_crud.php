<?php
include "db.php";

if (isset($_POST['add_subject'])) {

    $name      = trim($_POST['subject_name'] ?? '');
    $course_id = trim($_POST['course_id'] ?? '');
    $credits   = trim($_POST['credits'] ?? '');
    $semester  = trim($_POST['semester'] ?? '');

    // 🔴 Validation
    if (
        $name === '' ||
        $course_id === '' ||
        $credits === '' ||
        $semester === ''
    ) {
        echo "<script>
                alert('Please fill all fields');
                window.location.href='subject.html';
              </script>";
        exit();
    }

    // 🟢 Insert data
    $sql = "INSERT INTO subjects (subject_name, course_id, credits, semester)
            VALUES (?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);

    if ($stmt) {
        $stmt->bind_param("siis", $name, $course_id, $credits, $semester);

        if ($stmt->execute()) {
            echo "<script>
                    alert('Subject added successfully');
                    window.location.href='subject.html';
                  </script>";
        } else {
            echo "<script>
                    alert('Insert failed');
                    window.location.href='subject.html';
                  </script>";
        }

        $stmt->close();
    }
}

$conn->close();
?>
