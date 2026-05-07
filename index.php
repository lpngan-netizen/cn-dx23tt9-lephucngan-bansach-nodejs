<?php
include_once($_SERVER['DOCUMENT_ROOT'].'/inc/inc.php');

$WEB_META = 
'<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<meta name="mobile-web-app-capable" content="yes">
<meta http-equiv="Content-Type" content="text/html; charset='.get_setting('web_charset').'">
<meta http-equiv="Content-Language" content="'.get_setting('language').'">';

$WEB_LINK = '
<link rel="stylesheet" type="text/css" href="'.$HOST.'/css/style.css">
<link rel="stylesheet" type="text/css" href="'.$HOST.'/css/jquery-ui.css">
';

$WEB_SCRIPT = '
<script type="text/javascript" src="'.$HOST.'/js/jquery.js"></script>
<script type="text/javascript" src="'.$HOST.'/js/jquery-ui.js"></script>
<script type="text/javascript" src="'.$HOST.'/js/app.js"></script>
';

$WEB_CONTENT = '';
$parsed_url = parse_url($_SERVER['REQUEST_URI']);
$route = explode('/', strtolower($parsed_url['path']));
array_shift($route);
	
if ($parsed_url['path'] == '/') {
	$file = 'home';
}
elseif ($route[0] == 'admin') {
	if (is_login()) {
		if (count($route) == 1) {
			$file = 'admin';
		}
		else {
			$file = 'admin-'.$route[1];
		}
	}
	else {
		$file = 'login';
	}
}
else {
	$file = $route[0];
}

$file_path = $ABSPATH.'/fe/page-'.$file.'.php';
if (is_file($file_path)) {
	include_once($file_path);
}
else {
	include_once($ABSPATH.'/fe/page-404.php');
}
?>