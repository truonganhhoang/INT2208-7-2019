<div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Thêm <small>thiết bị</small>
                        </h1>
                    </div>
</div> 
<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-10">
                                    <form method="post" enctype="multipart/form-data">
                                        
                                        <div class="form-group">
                                            <label>Tên Thiết Bị</label>
                                            <input class="form-control"  required placeholder="Tên loại " name="TenLoai">
                                        </div>
                                        <div class="form-group">
                                            <button class="btn btn-info" name="BtnThemLoai">Thêm Loại</button>
                                            <button class="btn btn-success" type="reset" >Reset</button>
                                        </div>
                                     </form>
                                     <?php
                                            
                                            
                                            if(isset($_POST['BtnThemLoai']))
                                            {   
                                                $TenLoai=$_POST['TenLoai'];
                                               Them_Loai($TenLoai);
                                                echo"<script>alert('Thêm Thành Công !'); window.location='index.php?ADpage=QL-Loại'</script>";
                                            }
                                     
                                     ?>
                                     </div><!-- col-lg-8--->
                                    </div>   <!--row -->
                                    </div>
                                    </div>
                                    </div><!-- col-lg-12 --->
                                    </div><!-- row --->
                                   