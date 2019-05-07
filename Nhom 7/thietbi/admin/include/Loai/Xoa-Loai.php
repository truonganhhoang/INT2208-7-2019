<?php
$ChungLoaiID=$_GET['ChungLoaiID'];
Xoa_Loai($ChungLoaiID);
 echo"<script>alert('Xoá Thành Công !'); window.location='index.php?ADpage=QL-Loại'</script>";
?>