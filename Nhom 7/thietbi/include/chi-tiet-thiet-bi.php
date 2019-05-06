<div class="col-md-12">
    <?php
        $MaThietBi=$_GET['MaThietBi'];  //lay tham so  MaThietBi tren duong link web
        $ChiTietThietBi=ChiTietThietBi($MaThietBi);  //truyen tham so  vao function thietbi trong file Process_db.php
        foreach($ChiTietThietBi as $row)
        {   
            echo "<h1>".$row['TenThietBi']." </h1>";
            echo "<br>";
            echo "<h3>".$row['NoiDung']." </h3>";
            echo "<br>";
            echo "<img src='upload/".$row['AnhThietBi']."'  class='img-responsive' /> ";
            echo "<br>";
            echo $row['NhaSX'];
        }
    ?>
</div>
<div class="col-md-12">
    <hr>
    <h2>Thiết bị liên quan</h2><br>
    <?php
        $ChungLoaiID=$_GET['ChungLoaiID'];
        $Thietbilienquan=Thietbilienquan($ChungLoaiID,$MaThietBi);
        foreach($Thietbilienquan as $row)
        {   echo "<a href='?page=chi-tiet-thiet-bi&&MaThietBi=".$row['MaThietBi']."&&ChungLoaiID=".$row['ChungLoaiID']."' > ";          
            echo $row['TenThietBi'];
            echo "<img src='upload/".$row['AnhThietBi']."'  class='img-responsive' /> ";
            echo "</a>";
            echo "<br>";
            
        }
    ?>
    
</div>