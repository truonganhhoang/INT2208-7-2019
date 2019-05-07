<?php
$MaThietBi=$_GET['MaThietBi'];
Xoa_TB($MaThietBi);
echo"<script>window.location='index.php?ADpage=QL-TB'</script>";
?>