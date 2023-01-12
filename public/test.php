<?php
try {
require_once '../include/action.php';

if ($userid->execute()) {
    $_SESSION['success'] = "Session Successfully...";
    header("location: home.php");
}
echo "Connected successfully";

}catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>