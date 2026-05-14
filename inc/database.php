<?php
function create_connection() {
	global $DB_SETTING;
	mysqli_report(MYSQLI_REPORT_STRICT);
	
	try {
		$conn = new mysqli($DB_SETTING['db_host'], $DB_SETTING['db_user'], $DB_SETTING['db_password'], $DB_SETTING['db_name']);
		if (mysqli_connect_errno()) {
			printf("Connect failed: %s\n", mysqli_connect_error());
			die();
		}
		else {
			if (!$conn->set_charset($DB_SETTING['db_charset'])) {
				printf('Error loading character set '.$DB_SETTING['db_charset'].": %s\n", $conn->error);
			}
		}
		return $conn;
	}
	catch (Exception $e) {
		die($e->getMessage());
	}
}

function encode_input($input) {
	$mysqli = create_connection();
	return $mysqli->real_escape_string($input);
}

function insert_table($Table, $Data) {
	$mysqli = create_connection();
	$collist = '';
	$vallist = '';
	foreach($Data as $f=>$v) {
		$v = encode_input($v);
		$collist .= "`$f`,";
		if ($v == '[NULL]')
			$vallist .= "NULL,";
		else
			$vallist .= "'$v',";
	}
	$collist = rtrim($collist, ',');
	$vallist = rtrim($vallist, ',');
	
	$sql = "insert into $Table($collist) values($vallist)";
	return exec_query($sql);
}

function update_table($Table, $Data, $Condition) {
	$mysqli = create_connection();
	$Sets = '';
	foreach($Data as $f=>$v) {
		$v = encode_input($v);
		if ($v == '[NULL]')
			$Sets .= "`$f` = NULL,";
		else
			$Sets .= "`$f` = '$v',";
	}
	$Sets = rtrim($Sets, ',');
	$sql = "update $Table set $Sets where 1 $Condition";
	
	return exec_query($sql);
}


function delete_table($Table, $Condition){
	$sql = "delete from $Table where 1 $Condition";
	return exec_query($sql);
}

function exec_query($sql) {
	$mysqli = create_connection();
	if ($stmt = $mysqli->prepare($sql)) {
		$stmt->execute();
		if ($stmt->error != '') {
			if (get_setting('error_reporting') == 1) printf('<br>Lỗi: %s', $stmt->error . '<br>');
			$stmt->close();
			return false;
		}
		else {
			switch (substr($sql, 0, 6)) {
				case 'insert':
					$return = ['status'=>'ok', 'affected_rows'=>$stmt->affected_rows, 'insert_id'=>$stmt->insert_id];
				break;
				default:
					$return = ['status'=>'ok', 'affected_rows'=>$stmt->affected_rows];
			}

			$stmt->close();
			return $return;
		}
	}
	else {
		if (get_setting('error_reporting') == 1) printf('<br>Không thể thực hiện được lệnh SQL:<br> %s', $sql.'<br>');
		return false;
	}
}

function get_data($sql, $return = '') {
	$mysqli = create_connection();
	if ($stmt = $mysqli->prepare($sql)) {
		$stmt->execute();
		$stmt->store_result();
		$numrow = $stmt->num_rows;
		$meta = $stmt->result_metadata();
		$data = array();
		$meta_data = array();
		$meta_item = array();
		
		$bindResult = '$stmt->bind_result(';
		while ($columnName = $meta->fetch_field()) {
			$bindResult .= '$row["'.$columnName->name.'"],';
			$meta_item[$columnName->name] = '';
		}
		$meta_data[] = $meta_item;
		$bindResult = rtrim($bindResult, ',') . ');';
		eval($bindResult);
		
		while($stmt->fetch()) {
			$strarr = '';
			foreach($row as $field=>$myvalue) {
				$myvalue = str_replace("'", '"', $myvalue);
				$strarr .= "'$field'=>'$myvalue',";
			}
			$strarr = rtrim($strarr , ',');
			
			eval('$data[] = array('.$strarr.');');
		}
			
		$mysqli->close();
		
		switch($return) {
			case 'data':
				return $data;
				break;
			case 'meta':
				return $meta_data;
				break;
			default:
				return array(
					'numrow' => $numrow,
					'meta' => $meta_data,
					'data' => $data,
				);
				break;
		}
	}
	else {
		if (get_setting('error_reporting') == 1) printf('<br>Không thể thực hiện được lệnh SQL:<br> %s', $sql.'<br>');
		$mysqli->close();
		return false;
	}
}

function get_value($Field, $Table, $Condition) {
	$mysqli = create_connection();
	$sql = "select $Field from $Table where 1 $Condition limit 0, 1";
	if ($stmt = $mysqli->prepare($sql)) {
		$stmt->execute();
		$stmt->bind_result($result);
		$stmt->fetch();
		if ($stmt->error != '') {
			if (get_setting('error_reporting') == 1) printf('<br>Lỗi: %s', $stmt->error . '<br>');
			$stmt->close();
			return false;
		}
		else {
			$stmt->close();
			return $result;
		}
	}
	else {
		if (get_setting('error_reporting') == 1) printf('<br>Không thể thực hiện được lệnh SQL:<br> %s', $sql.'<br>');
		return false;
	}
}

function data_exist($Table, $Condition = ''){
	$result = get_value('count(*)', $Table, $Condition);

	if ($result == false || $result == '' || $result == NULL || $result == 0)
		$result = false;
	 else
		$result = true;
			
	return $result;
}
?>
