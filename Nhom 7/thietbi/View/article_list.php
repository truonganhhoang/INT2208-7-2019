<?php
    include_once('..\Model\database.php');
    include_once('..\Model\process_db.php');
?>

<!DOCTYPE html>
<html>
<head>
  <title>Register</title>
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="..\View\css\bootstrap.min.css">
    <script src="..\View\js\jquery.min.js"></script>
    <script src="..\View\js\bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="..\View\css\style.css">
</head>
<body>

<div class="container">
  <h2>Danh sách tin tức</h2>
  <h4>Loại tin</h4>
  <ul>
      <?php
          $id_category=filter_input(INPUT_GET,'id_category');
          $articles=get_article_by_IDcategory($id_category);
          foreach($articles as $v){
      ?>
          <a href="?action=article_detail.php?&article_id=<?php echo $v['Id'];?>">
            <li> <?php echo $v['title'];?></li>
          </a>
      <?php
          }
      ?>
  </ul>
</div>
</body>
</html>
