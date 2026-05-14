<?php
$category_list = [];
$category_data = get_data('select * from category', 'data');
$sidebar = '';

if ($category_data) {
    foreach ($category_data as $cat) {
        $category_list[] = "<li><a href='/?cat=$cat[id]'>$cat[name]</a></li>";
    }

    $sidebar = '<div class="sidebar"><ul>'.implode('', $category_list).'</ul></div>';
}


$select_cat = get_param('cat');
$cond = $select_cat > 0? ' where category = "'.$select_cat.'"': '';

$book_data = get_data('select * from book'.$cond, 'data');
$book_list = [];
$books = '';

if($book_data) {
    foreach ($book_data as $book) {
        $book_list[] = "<div class='book'>
            <a class='book-wrapper' href='/books/$book[url]'>
                <div class='image'><img src='$book[img]'></div>
                <h4 class='title'>$book[name]</h4>
            </a>
        </div>";
    }

    $books = '<div class="book-container">' . implode('', $book_list) . '</div>';
}

$WEB_CONTENT .= '<div id="home-book" class="container">
    '.$sidebar.$books.'
</div>';

$WEB_CONTENT .= file_get_contents($ABSPATH.'/template/page-books.html');
include_once($ABSPATH.'/fe/template.php')
?>