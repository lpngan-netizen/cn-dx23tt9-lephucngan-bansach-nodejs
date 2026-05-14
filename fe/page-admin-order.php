<?php
$id = get_param('id', 'GET');

if (is_numeric($id) and $id >= 0) {
    $result = get_data('select * from orders where id = "'.$id.'"');
    $data = ($result['numrow'] == 0)? $result['meta'][0]: $result['data'][0];
    $result_detail = get_data('select 
    from order_detail a inner join book b on a.book_id = b.id
    where order_id = "'.$id.'"', 'data');
    
    $WEB_CONTENT = "
    <div id='formdata'>
        <div class='datarow'>
            <label>Ngày đặt</label>
            <input type='text' name='order_date' class='datepicker' value='".format_date($data['order_date'], 'd/m/Y')."'>
        </div>
        <div class='datarow'>
            <label>Khách hàng</label>
            <input type='text' name='customer' value='$data[customer]'>
        </div>
        <div class='datarow'>
            <label>Điện thoại</label>
            <input type='text' name='phone' value='$data[phone]'>
        </div>
        <div class='datarow'>
            <label>Địa chỉ</label>
            <input type='text' name='address' value='$data[address]'>
        </div>
        <div class='datarow'>
            <label>Tổng giá trị</label>
            <input type='text' name='total' value='$data[total]' readonly disabled>
        </div>

        <input type='hidden' name='id' value='$data[id]'>
    </div>
    <div id='formdetail'>
        <div id='detail-cmmd'>
            <div id='add-detail' class='button'>Thêm sách</div>
        </div>
        <table class='datatable'>
            <thead>
                <tr>
                    <th>Sách</th>
                    <th>Đơn giá</th>
                    <th>Số lượng</th>
                    <th>Giá trị</th>
                    <th></th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
    <div id='formcmd'>
        <div id='save' class='button'>Lưu</div>
        <div id='cancel' class='button'>Không lưu</div>
    </div>
    <div id='select-book'>
        <div id='panel'>
            <div id='header'><div id='close'>Đóng</div></div>
            <div id='book-list'>
            </div>
        </div>
    </div>
    ";
}
else {
    $data = get_data('select * from orders', 'data');
    $list = [];

    if ($data) {
        foreach ($data as $item) {
            $list[] = "<tr>
                <td>".format_date($item['order_date'], 'd/m/Y')."</td><td>$item[customer]</td><td align='right'>".format_number($item['total'])."</td>
                <td class='cmd'>
                    <a href='/admin/order?id=$item[id]'>Sửa</a> | 
                    <a href='#' class='delete' item_id='$item[id]' item_name='$item[customer]'>Xóa</a>
                </td>
            </tr>";
        }
    }

    $WEB_CONTENT .= '
    <div id="cmd"><div class="button" id="addnew">Thêm</div></div>
    <table class="datatable">
        <thead>
            <tr>
                <th>Ngày đặt</th>
                <th>Khách hàng</th>
                <th>Giá trị</th>
                <th></th>
            </tr>
        </thead>
        <tbody>'.implode('', $list).'</tbody>
    </table>';
}

$WEB_CONTENT .= file_get_contents($ABSPATH.'/template/page-admin-order.html');
include_once($ABSPATH.'/fe/template-admin.php');
?>