<?php
include "db.php";

if (isset($_POST['add_lecturer'])) {

    $name       = trim($_POST['lecturer_name'] ?? '');
    $nic        = trim($_POST['nic'] ?? '');
    $email      = trim($_POST['email'] ?? '');
    $phone      = trim($_POST['phone'] ?? '');
    $department = trim($_POST['department'] ?? '');

    // 🔴 Validation
    if (
        $name === '' ||
        $nic === '' ||
        $email === '' ||
        $phone === '' ||
        $department === ''
    ) {
        echo "<script>
                alert('Please fill all fields');
                window.location.href='lecturer.html';
              </script>";
        exit();
    }

    // 🟢 Insert data
    $sql = "INSERT INTO lecturers (lecturer_name, nic, email, phone, department)
            VALUES (?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);

    if ($stmt) {
        $stmt->bind_param("sssss", $name, $nic, $email, $phone, $department);

        if ($stmt->execute()) {
            echo "<script>
                    alert('Lecturer registered successfully');
                    window.location.href='lecturer.html';
                  </script>";
        } else {
            echo "<script>
                    alert('Insert failed');
                    window.location.href='lecturer.html';
                  </script>";
        }

        $stmt->close();
    }
}

$conn->close();
?>
