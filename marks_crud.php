<?php
include "db.php";

if (isset($_POST['add_marks'])) {

    $student_id = trim($_POST['student_id'] ?? '');
    $subject_id = trim($_POST['subject_id'] ?? '');
    $exam_id    = trim($_POST['exam_id'] ?? '');
    $marks      = trim($_POST['marks'] ?? '');
    $total      = trim($_POST['total'] ?? '');

    // 🔴 Validation
    if (
        $student_id === '' ||
        $subject_id === '' ||
        $exam_id === '' ||
        $marks === '' ||
        $total === ''
    ) {
        echo "<script>
                alert('Please fill all fields');
                window.location.href='marks.html';
              </script>";
        exit();
    }

    // 🟢 Insert data
    $sql = "INSERT INTO marks (student_id, subject_id, exam_id, marks, total)
            VALUES (?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);

    if ($stmt) {
        $stmt->bind_param(
            "iiiii",
            $student_id,
            $subject_id,
            $exam_id,
            $marks,
            $total
        );

        if ($stmt->execute()) {
            echo "<script>
                    alert('Marks added successfully');
                    window.location.href='marks.html';
                  </script>";
        } else {
            echo "<script>
                    alert('Insert failed');
                    window.location.href='marks.html';
                  </script>";
        }

        $stmt->close();
    }
}

$conn->close();
?>
