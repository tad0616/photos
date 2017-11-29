<?php
if (isset($op)) {
    $smarty->assign('op', $op);
}
$smarty->assign('page_title', $page_title);
$smarty->assign('data_tilt_options', $data_tilt_options);

//載入與.php檔名相同的.tpl
$smarty->display(_PAGE_TPL);
