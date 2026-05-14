<!DOCTYPE html>
<html>
<head>
    <title>Website giới thiệu và bán sách Thần Đồng 21NB</title>
    <link rel="shortcut icon" href="/image/icon.png" type="image/png">
    <link rel="icon" href="/image/icon.png" type="image/png">
<?php
    $WEB_LINK .= '<link rel="stylesheet" type="text/css" href="'.$HOST.'/css/admin.css">';
	echo $WEB_META;
	echo $WEB_LINK;
	echo $WEB_SCRIPT;
?>
</head>
<body>
	<div id="website">
        <div id="page-admin">
            <div id="sidebar"><?php 
                include_once($ABSPATH.'/fe/com-admin-sidebar.php');
                echo $sidebar;
            ?></div>
            <div id="page-content">
                <?php echo $WEB_CONTENT; ?>
            </div>
        </div>
	</div>

    <div id="loading"></div>
</body>
</html>