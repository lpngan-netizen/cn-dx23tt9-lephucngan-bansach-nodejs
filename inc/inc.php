<?php
$ABSPATH = $_SERVER['DOCUMENT_ROOT'];
include($ABSPATH.'/inc/lib.php');
include($ABSPATH.'/inc/setting.php');
include($ABSPATH.'/inc/db.php');
include($ABSPATH.'/inc/database.php');
//-------------------------------------------------------------------

date_default_timezone_set($SETTING['timezone']);
$HOST = get_host();
?>