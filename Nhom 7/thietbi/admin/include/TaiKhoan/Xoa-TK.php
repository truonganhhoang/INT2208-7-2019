<?php
$UserID=$_GET['UserID'];
Xoa_TK($UserID);
echo"<script>window.location='index.php?ADpage=QL-TK'</script>";
?>