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
  <h2>Chi tiết tin</h2>
 
  
      <?php
          $article_id=filter_input(INPUT_GET,'article_id');
          $article=get_detail_article_by_IDarticle($article_id);
                   
          echo "<h4>".$article['title']."</h4>";
          echo "<p>".$article['content']."</P>";
      ?>
      
  
</div>
</body>
</html>
