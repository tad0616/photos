<?php
require_once '_header.php';
$page_title = '學員登入';
$op         = '';
if (isset($_SESSION['username'])) {
    header("location:index.php?op=upload");
}

require_once '_footer.php';
