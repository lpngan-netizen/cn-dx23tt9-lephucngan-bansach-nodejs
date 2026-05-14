<!DOCTYPE html>
<html>
<head>
    <title>Website Giới thiệu Sách Thần Đồng 21NB</title>
    <link rel="shortcut icon" href="/image/icon.png" type="image/png">
    <link rel="icon" href="/image/icon.png" type="image/png">
<?php
	echo $WEB_META;
	echo $WEB_LINK;
	echo $WEB_SCRIPT;
?>
</head>
<body>
	<div id="website">
        <div id="header">
            <?php require($ABSPATH.'/fe/com-header.php');?>
        </div>
    
        <div id="body">
            <?php echo $WEB_CONTENT; ?>
        </div>
        
        <div id="footer">
            <?php require($ABSPATH.'/fe/com-footer.php');?>
        </div>
	</div>

    <div id="loading"></div>
</body>
</html>