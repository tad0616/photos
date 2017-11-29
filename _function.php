<?php
require_once "_setup.php";
//連線到資料庫
function link_db()
{
    $db = new mysqli(_DB_HOST, _DB_USER, _DB_PASS, _DB_NAME);
    if ($db->connect_error) {
        die('無法連上資料庫：' . $db->connect_error);
    }
    $db->set_charset("utf8");
    return $db;
}
