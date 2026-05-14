<?php
$WEB_CONTENT .= file_get_contents($ABSPATH.'/template/page-404.html');
?>

<!DOCTYPE html>
<html>
<head>
    <title>Website giới thiệu và bán sách Thần Đồng 21NB</title>
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
        <div id="body" class="container">
            <?php echo $WEB_CONTENT; ?>
        </div>
</body>
</html>