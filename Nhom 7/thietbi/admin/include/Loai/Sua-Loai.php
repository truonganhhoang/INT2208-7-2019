<div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Sửa <small>Loại</small>
                        </h1>
                    </div>
</div> 

<?php
    
    $ChungLoaiID=$_GET['ChungLoaiID'];
    $chungloai=Loai_SUA_Loai($ChungLoaiID);
    $row=$chungloai->fetch();
    
?>
<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-10">
                                    <form role="form" method="post" enctype="multipart/form-data">
                                        
                                        <div class="form-group">
                                            <label>Tên loại</label>
                                            <input class="form-control" required placeholder="Tên loai" name="TenLoai" 
                                            value="<?php echo $row['TenLoai'];?>" />
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
                                            <button class="btn btn-info" name="BtnSuaLoai" onclick='return edit()'>Sửa loại </button>
                                            <button class="btn btn-info" type="reset" >Reset</button>
                                        </div>
                                     </form>
                                     <?php
                                     if(isset($_POST['BtnSuaLoai']))
                                        {   
                                            $TenLoai=$_POST['TenLoai'];
                                            $ChungLoaiID=$_POST['ChungLoaiID'];
                                            SUA_Loai($TenLoai,$ChungLoaiID);
                                            echo"<script>alert('Sửa Thành Công !'); window.location='index.php?ADpage=QL-Loại'</script>";
                                             
                                        }
                                     
                                     ?>
                                     </div><!-- col-lg-8--->
                                    </div>   <!--row -->
                                    </div>
                                    </div>
                                    </div><!-- col-lg-12 --->
                                    </div><!-- row --->
                                   