<?php
$id = get_param('id', 'GET');

if (is_numeric($id) and $id >= 0) {
    $result = get_data('select * from category where id = "'.$id.'"');
    $data = ($result['numrow'] == 0)? $result['meta'][0]: $result['data'][0];
    
    $WEB_CONTENT = "
    <div id='formdata'>
        <div class='datarow'>
            <label>Tên</label>
            <input type='text' name='name' value='$data[name]'>
        </div>

        <input type='hidden' name='id' value='$data[id]'>
    </div>
    <div id='formcmd'>
        <div id='save' class='button'>Lưu</div>
        <div id='cancel' class='button'>Không lưu</div>
    </div>
    ";
}
else {
    $data = get_data('select * from category', 'data');
    $list = [];

    if ($data) {
        foreach ($data as $item) {
            $list[] = "<tr><td>$item[name]</td>
            <td class='cmd'>
            <a href='/admin/category?id=$item[id]'>Sửa</a> | 
            <a href='#' class='delete' item_id='$item[id]' item_name='$item[name]'>Xóa</a>
            </td></tr>";
        }
    }

    $WEB_CONTENT .= '
    <div id="cmd"><div class="button" id="addnew">Thêm</div></div>
    <table class="datatable">
        <thead>
            <tr>
                <th>Tên</th>
                <th></th>
            </tr>
        </thead>
        <tbody>'.implode('', $list).'</tbody>
    </table>';
}

$WEB_CONTENT .= file_get_contents($ABSPATH.'/template/page-admin-category.html');
include_once($ABSPATH.'/fe/template-admin.php');
?>