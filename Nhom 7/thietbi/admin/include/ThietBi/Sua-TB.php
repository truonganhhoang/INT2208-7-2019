<div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Sửa <small>thiết bị</small>
                        </h1>
                    </div>
</div> 

<?php
    
    $MaThietBi=$_GET['MaThietBi'];
    $thietbi=TB_SUA_TB($MaThietBi);
    $row=$thietbi->fetch();
    
?>
<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-10">
                                    <form role="form" method="post" enctype="multipart/form-data">
                                        
                                        <div class="form-group">
                                            <label>Tên thiết bị</label>
                                            <input class="form-control" required placeholder="Tên thiết bị" name="TenThietBi" 
                                            value="<?php echo $row['TenThietBi'];?>" />
                                        </div>
                                        <div class="form-group">
                                            <label>Nội dung</label>
                                            <input class="form-control"  required placeholder="Nội dung" name="NoiDung" 
                                            value="<?php echo $row['NoiDung'];?>" />
                                        </div>

                                        <div class="form-group">
                                            <label>NhaSX</label>
                                            <input class="form-control" required placeholder=" Nhà sản xuất" name="NhaSX" 
                                            value="<?php echo $row['NhaSX'];?>" />
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Chủng Loại</label>
                                            <select class="form-control" name="ChungLoaiID">
                                                <?php
                                                    $chungloai=chungloai();
                                                    foreach($chungloai as $row2)
                                                    {
                                                        echo "
                                                            <option value='".$row2['ChungLoaiID']."' ";
                                                            ?>
                                                            <?php
                                                            if($row['ChungLoaiID']==$row2['ChungLoaiID']) 
                                                            echo "selected"; 
                                                            ?>
                                                            <?php
                                                            echo">
                                                                ".$row2['TenLoai']."
                                                            </option>
                                                        ";
                                                    }
                                                ?>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label>Ảnh</label>
                                            <input  type="file" name="image_upload">                      
                                             <input type="hidden" name="anh_mo_ta" value="<?php echo $row['AnhThietBi']?>"  >
                                        </div>
                                        <div class="form-group">
                                            <label>Số lượng</label>
                                            <input class="form-control" required placeholder=" Số lượng" name="SoLuong" 
                                            value="<?php echo $row['SoLuong'];?>" />
                                        </div>

                                        <div class="form-group">
                                            <label>Đơn vị tính</label>
                                            <input class="form-control" required placeholder=" Đơn vị tính" name="DonViTinh" 
                                            value="<?php echo $row['DonViTinh'];?>" />
                                        </div>

                                        <div class="form-group">
                                            <label>Đơn giá</label>
                                            <input class="form-control" required placeholder=" Đơn giá" name="DonGia" 
                                            value="<?php echo $row['DonGia'];?>" />
                                        </div>

                                        <div class="form-group">
                                            <button class="btn btn-info" name="BtnSuaTB" onclick='return edit()'>Sửa Bài Viết</button>
                                            <button class="btn btn-info" type="reset" >Reset</button>
                                        </div>
                                     </form>
                                     <?php
                                     if(isset($_POST['BtnSuaTB']))
                                        {   $TenThietBi=$_POST['TenThietBi'];
                                            $NoiDung=$_POST['NoiDung'];
                                            $NhaSX=$_POST['NhaSX'];
                                            $ChungLoaiID=$_POST['ChungLoaiID'];
                                            $SoLuong=$_POST['SoLuong'];
                                            if($_FILES["image_upload"]["name"])
                                            {
                                                $image_name=$_FILES["image_upload"]["name"];
                                                $image_path=$_FILES["image_upload"]["tmp_name"];
                                                $new_image_path="../upload/".$image_name;
                                                $image_upload=move_uploaded_file($image_path, $new_image_path);
                                                
                                            }
                                            else {
                                                $image_name=$_POST["anh_mo_ta"];
                                                }
                                             $DonViTinh=$_POST['DonViTinh'];
                                              $DonGia=$_POST['DonGia'];
                                            SUA_TB($TenThietBi,$NoiDung,$NhaSX,$image_name,$SoLuong,$DonViTinh,$DonGia,$ChungLoaiID,$MaThietBi);
                                            echo"<script>alert('Sửa Thành Công !'); window.location='index.php?ADpage=QL-TB'</script>";
                                             
                                        }
                                     
                                     ?>
                                     </div><!-- col-lg-8--->
                                    </div>   <!--row -->
                                    </div>
                                    </div>
                                    </div><!-- col-lg-12 --->
                                    </div><!-- row --->
                                   