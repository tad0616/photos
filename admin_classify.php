<?php
require_once '_header.php';
$page_title = '分類管理';
$op         = '';

// die(var_dump($_SESSION));/*檢查有沒有session*/

$op = isset($_REQUEST['op']) ? filter_var($_REQUEST['op']) : '';
$sn = isset($_REQUEST['sn']) ? (int) $_REQUEST['sn'] : 0;

/***************** ↓ 流程控制區 ↓ ********************/
switch ($op) {

    case 'insert':
        $sn = data_insert();
        header("location: index.php");
        exit;

        // default:
        //     if ($sn) {
        //         show_photo($sn);
        //         $op = 'show_photo';
        //     } else {
        //         $op = 'home';
        //     }
        //     break;
}

require_once '_footer.php';

/******************* ↓ 函式區 ↓ **********************/

//新增資料
function data_insert()
{
    global $db;
    $title       = $db->real_escape_string($_POST['title']);
    $description = $db->real_escape_string($_POST['description']);
    $username    = $db->real_escape_string($_POST['username']);
    $sort        = $db->real_escape_string($_POST['sort']);

    $sql = "INSERT INTO `classify` (`title`, `description`, `sort`) VALUES ('{$title}', '{$description}', '{$sort}')";
    $db->query($sql) or die($db->error);
    $sn = $db->insert_id;

    upload_pic($sn);

    return $sn;
}

//讀出一則資料
function show_photo($sn)
{
    global $db, $smarty;

    // require_once 'HTMLPurifier/HTMLPurifier.auto.php';
    // $config   = HTMLPurifier_Config::createDefault();
    // $purifier = new HTMLPurifier($config);

    $sql    = "SELECT * FROM `photo` WHERE `sn`='$sn'";
    $result = $db->query($sql) or die($db->error);
    $data   = $result->fetch_assoc();
    // $data['content'] = $purifier->purify($data['content']);
    $data['summary']      = mb_substr(strip_tags($data['description']), 0, 90);
    $data['display_time'] = date("d M Y", strtotime($data['update_time']));
    $smarty->assign('photo', $data);
}

//上傳分類照片
function upload_pic($sn)
{

    if (isset($_FILES)) {
        require_once 'class.upload.php';
        $foo = new Upload($_FILES['uploadpic']);
        if ($foo->uploaded) {
            // save uploaded image with a new name
            $foo->file_new_name_body = 'classify_' . $sn;
            $foo->image_resize       = true;
            $foo->image_convert      = jpg;
            $foo->image_y            = 1080;
            $foo->image_ratio_x      = true;
            $foo->Process('uploads/');
        }
    }
}
