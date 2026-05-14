<?php
include_once($_SERVER['DOCUMENT_ROOT'] . '/inc/inc.php');

$response = [];
$param_username = htmlspecialchars_decode(get_param('usr'));
$param_password = htmlspecialchars_decode(get_param('pwd'));

if ($param_username == '') {
    $response = ['status'=>'fail', 'message'=>'Không có tên'];
} else if ($param_password == '') {
    $response = ['status'=>'fail', 'message'=>'Không có mật khẩu'];
} else {
    $sql = 'select *
    from user
    where BINARY `username` = "' . $param_username . '"';
    $data_user = get_data($sql);
    
    if ($data_user and $data_user['numrow'] > 0) {
        foreach ($data_user['data'] as $datarow) {
            if ($datarow['password'] !== md5($param_password)) {
                $response = ['status'=>'fail', 'message'=>'Tên hoặc mật khẩu không đúng'];
            } elseif ($datarow['admin'] == 0 && $datarow['state'] == 0) {
                $response = ['status'=>'fail', 'message'=>'Tài khoản bị khóa'];
            } else {
                set_session('USER', $datarow);
                $response = ['status'=>'success', 'message'=>'verification_success'];
            }
        }   
    } else {
        $response = ['status'=>'fail', 'message'=>'Tên hoặc mật khẩu không đúng'];
    }
}

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
echo json_encode($response);
?>