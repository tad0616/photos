<?php
require_once '_header.php';
$page_title = '學員註冊';
$op         = '';

// if (isset($_SESSION['username'])) {
//     session_start();
//     session_destroy();
// }
if (isset($_SESSION['username'])) {
    header("location:index.php");
}

require_once '_footer.php';
