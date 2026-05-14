<?php
$id = get_param('id', 'GET');

if (is_numeric($id) and $id >= 0) {
    $result = get_data('select * from book where id = "'.$id.'"');
    $data = ($result['numrow'] == 0)? $result['meta'][0]: $result['data'][0];
    $data_category = get_data('select * from category', 'data');
    $option_category = '';

    if ($data_category) {
        $list = [];

        foreach ($data_category as $item) {
            $select = $item['id'] == $data['category']? 'selected': '';
            $list[] = "<option value='$item[id]' $select>$item[name]</option>";
        }

        $option_category = implode('', $list);
    }
    
    $WEB_CONTENT = "
    <div id='formdata'>
        <div class='datarow'>
            <label>Tên</label>
            <input type='text' name='name' value='$data[name]'>
        </div>
        <div class='datarow'>
            <label>Giới thiệu</label>
            <textarea name='description'>$data[description]</textarea>
        </div>
        <div class='datarow'>
            <label>Ảnh bìa</label>
            <input type='text' name='img' value='$data[img]'>
        </div>
        <div class='datarow'>
            <label>Giá</label>
            <input type='text' name='price' value='$data[price]'>
        </div>
        <div class='datarow'>
            <label>Thể loại</label>
            <select name='category'>$option_category</select>
        </div>
        <div class='datarow'>
            <label>Sách mới</label>
            <select name='new'>
                <option value='1'>Mới</option>
                <option value='0'>Không</option>
            </select>
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
    $data = get_data('select book.*, category.name category_name from book left join category on book.category = category.id', 'data');
    $list = [];
    $newlist = ['Không', 'Mới'];
    

    if ($data) {
        foreach ($data as $item) {
            $new_state = $newlist[$item['new']];

            $list[] = "<tr>
            <td>$item[name]</td><td>$item[category_name]</td>
            <td align='right'>".format_number($item['price'])."</td>
            <td align='right'>$new_state</td>
            <td class='cmd'>
            <a href='/admin/book?id=$item[id]'>Sửa</a> | 
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
                <th>Thể loại</th>
                <th>Giá</th>
                <th>Mới</th>
                <th></th>
            </tr>
        </thead>
        <tbody>'.implode('', $list).'</tbody>
    </table>';
}

$WEB_CONTENT .= file_get_contents($ABSPATH.'/template/page-admin-book.html');
include_once($ABSPATH.'/fe/template-admin.php');
?>