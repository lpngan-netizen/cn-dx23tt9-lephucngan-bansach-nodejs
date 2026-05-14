<?php
function is_login() {
	return is_session('USER');
}

function is_su() {
	$user = get_user();
	return $user['admin'] == 1;
}

function get_host() {
	$pageURL = 'http';
	if (isset($_SERVER['HTTPS'])) $pageURL .= 's';
	$pageURL .= '://'.$_SERVER['SERVER_NAME'];
	
	return $pageURL;
}

function get_user() {
	return get_session('USER');
}

function start_session() {
	global $SETTING;
	if (session_status() == PHP_SESSION_NONE) {
		session_save_path($SETTING['session_path']);
		session_start();
	}
}

function get_session($param_name) {
	start_session();
	$param_value = '';
	if(isset($_SESSION[$param_name])) $param_value = $_SESSION[$param_name];	
	return $param_value;
}

function set_session($param_name, $param_value) {
	unset_session($param_name);
	$_SESSION[$param_name] = $param_value;
}

function unset_session($param_name) {
	start_session();
	if(isset($_SESSION[$param_name])) unset($_SESSION[$param_name]);
}

function is_session($param_name) {
	start_session();
	if(isset($_SESSION[$param_name]))
		return true;
	else
		return false;
}

function set_setting($name, $value, $override = 0) {
	global $SETTING;
	$value = trim($value);
	if ($override === 1) {
		$SETTING[$name] = $value;
	}
	else {
		if ($value != '') $SETTING[$name] = $value;
	}
}

function get_setting($name) {
	global $SETTING;
	if (isset($SETTING[$name])) {
		return $SETTING[$name];
	}
	else {
		return '';
	}
}

function get_param($param_name) {
	global $REQUEST_DATA;
	$param_value = false;
	$POST = $REQUEST_DATA? $REQUEST_DATA: $_POST;
	
	if(isset($_SERVER[$param_name])) $param_value = $_SERVER[$param_name];
	else if(isset($POST[$param_name])) $param_value = $POST[$param_name];
	else if(isset($_GET[$param_name])) $param_value = $_GET[$param_name];
	else if(isset($_FILES[$param_name])) $param_value = $_FILES[$param_name];
	else if(isset($_COOKIE[$param_name])) $param_value = $_COOKIE[$param_name];
	else if(isset($REQUEST_DATA[$param_name])) $param_value = $REQUEST_DATA[$param_name];
	
	if ($param_value === false) {
		return false;
	}
	else {
		return trim($param_value);
	}
}

function get_param_list($param_list) {
	$list = $param_list;
	if (!is_array($param_list)) {
		$list = explode(',', $param_list);
	}
	
	$rev = array();
	foreach($list as $item) {
		$item = explode(' ', trim($item), 2);
		if (count($item) == 2) {
			$item_name = trim($item[0]);
			$item_alias = trim($item[1]);
		}
		else {
			$item_name = trim($item[0]);
			$item_alias = trim($item[0]);
		}
		
		$val = get_param($item_name);
		if ($val !== false) $rev["$item_alias"] = $val;
	}
	
	return $rev;
}

function format_number($num, $formatstring = '') {
	global $SETTING;
	if (!is_numeric($num)) {
		$rev = '{not_numeric}';
	}
	else {
		if ($formatstring == '') {
			if (isset($SETTING['number_format']) && trim($SETTING['number_format']) != '') {
				$fm = json_decode($SETTING['number_format'], true);
				if (json_last_error() == 0) {
					$formatstring = $fm['dec_num'].',"'.$fm['dec_sep'].'","'.$fm['thou_sep'].'"';
				}
				else {
					return '{wrong_format}';
				}
			}
			else {
				$formatstring = '0,",","."';
			}
		}
		
		eval('$rev = number_format($num, '.$formatstring.');');
	}
	
	return $rev;
}

function format_date($date, $formatstring = '') {
	global $SETTING;
	$newdate = '';
	if ($formatstring == '') {
		$formatstring = (isset($SETTING['date_format']) && trim($SETTING['date_format']) != '')? $SETTING['date_format']: 'd/m/Y';
	}
	
	if (!($date == '0000-00-00 00:00:00' || $date == '0000-00-00' || $date == '')) {
		$newdate = date($formatstring, strtotime($date));
	}
	return $newdate;
}

function remove_accent($str) {
	$str = preg_replace('/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/', 'a', $str);
	$str = preg_replace('/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/', 'e', $str);
	$str = preg_replace('/(ì|í|ị|ỉ|ĩ)/', 'i', $str);
	$str = preg_replace('/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ|ö)/', 'o', $str);
	$str = preg_replace('/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/', 'u', $str);
	$str = preg_replace('/(ỳ|ý|ỵ|ỷ|ỹ)/', 'y', $str);
	$str = preg_replace('/(đ)/', 'd', $str);
	$str = preg_replace('/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)/', 'A', $str);
	$str = preg_replace('/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/', 'E', $str);
	$str = preg_replace('/(Ì|Í|Ị|Ỉ|Ĩ)/', 'I', $str);
	$str = preg_replace('/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)/', 'O', $str);
	$str = preg_replace('/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/', 'U', $str);
	$str = preg_replace('/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/', 'Y', $str);
	$str = preg_replace('/(Đ)/', 'D', $str);
	$str = preg_replace('/[^a-zA-Z0-9-\s_]+/', '', $str);
	
	$str_arr = explode(' ', $str);
	$rev = '';
	foreach($str_arr as $e) {
		$e = trim($e);
		if ($e != '' && $e != '-') $rev .= strtolower($e).'-';
	}
	$rev = rtrim($rev, '-');
	
	return $rev;
}
?>