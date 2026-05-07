<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ưu đãi sách</title>

  <link rel="stylesheet" href="css/promo.css">
</head>

<body>

<!-- Banner full -->
<section class="hero">
  <img src="images/banner.jpg" alt="Banner">
</section>

<!-- Container giống Fahasa -->
<div class="container">

  <!-- Menu -->
  <section class="category">
    <button class="active">Tất cả</button>
    <button>Flash Sale</button>
    <button>Thiếu nhi</button>
    <button>Kỹ năng</button>
  </section>

  <!-- Product -->
  <section class="products">
    <?php for ($i = 1; $i <= 12; $i++) { ?>
      <div class="product-card">
        <img src="images/book<?= $i % 3 + 1 ?>.jpg">
        <h3>Sách <?= $i ?></h3>
        <p class="price"><?= rand(50,150) ?>.000đ</p>
      </div>
    <?php } ?>
  </section>

</div>

<script src="js/promo.js"></script>

</body>
</html>