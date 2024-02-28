<?php
if ($_SESSION['usertype'] != "Admin") {
    header('Location: /dashboard.php');
}
?>