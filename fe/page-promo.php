<?php
$data = get_data('select * from book limit 15', 'data');
$list = [];

if($data) {
    foreach ($data as $book) {
        $list[] = "<div class='book'>
            <a class='book-wrapper' href='/books/$book[url]'>
                <div class='image'><img src='$book[img]'></div>
                <h4 class='title'>$book[name]</h4>
            </a>
        </div>";
    }

    $WEB_CONTENT .= '<div class="page-body container">
        <div class="book-container">' . implode('', $list) . '</div>
    </div>';
}

$WEB_CONTENT .= file_get_contents($ABSPATH.'/template/page-books.html');
include_once($ABSPATH.'/fe/template.php')
?>