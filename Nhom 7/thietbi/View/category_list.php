<?php
    include_once('..\Model\database.php');
    include_once('..\Model\process_db.php');
?>

<!DOCTYPE html>
<html>
<head>
  <title>Danh sách loại tin</title>
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="..\View\css\bootstrap.min.css">
    <script src="..\View\js\jquery.min.js"></script>
    <script src="..\View\js\bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="..\View\css\style.css">
</head>
<body>

<div class="container">
  <h2>Danh sách loại tin</h2>
  <h4>Loại tin</h4>
  <ul>
      <?php
          $categories=get_all_caterory();
          foreach($categories as $v){
      ?>
          <a href="?action=article_list.php?&id_category=<?php echo $v['id']?>">
          <li> <?php echo $v['name'];?></li>
          </a>
      <?php
          }
      ?>
  </ul>
</div>
</body>
</html>
