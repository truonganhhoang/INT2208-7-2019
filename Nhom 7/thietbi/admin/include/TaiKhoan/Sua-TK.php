<div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Sửa <small>tài khoản</small>
                        </h1>
                    </div>
</div> 

<?php
    
    $UserID=$_GET['UserID'];
    $users=TK_SUA_TK($UserID);
    $row=$users->fetch();
    
?>
<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-10">
                                    <form role="form" method="post" enctype="multipart/form-data">
                                        
                                        <div class="form-group">
                                            <label>Tên đăng nhập</label>
                                            <input class="form-control" required placeholder="Tên đăng nhập" name="UserName" 
                                            value="<?php echo $row['UserName'];?>" />
                                        </div>
                                        <div class="form-group">
                                            <label>Mật khẩu</label>
                                            <input class="form-control"  required placeholder="Mật khẩu" name="Password" 
                                            value="<?php echo $row['Password'];?>" />
                                        </div>

                                        <div class="form-group">
                                            <label>Tên đầy đủ</label>
                                            <input class="form-control" required placeholder="Tên đầy đủ" name="Name" 
                                            value="<?php echo $row['Name'];?>" />
                                        </div>

                                        <div class="form-group">
                                            <label>Email</label>
                                            <input class="form-control" required placeholder="Tên đầy đủ" name="Email" 
                                            value="<?php echo $row['Email'];?>" />
                                        </div>

                                        <div class="form-group">
                                            <label>Số điện thoại</label>
                                            <input class="form-control" required placeholder="Tên đầy đủ" name="Phone" 
                                            value="<?php echo $row['Phone'];?>" />
                                        </div>
                                        <div class="form-group">
                                            <button class="btn btn-info" name="BtnSuaTK" onclick='return edit()'>Sửa Tài Khoản</button>
                                            <button class="btn btn-info" type="reset" >Reset</button>
                                        </div>
                                     </form>
                                     <?php
                                     if(isset($_POST['BtnSuaTK']))
                                        {   $UserName=$_POST['UserName'];
                                            $Password=$_POST['Password'];
                                            $Name=$_POST['Name'];
                                            $Email=$_POST['Email'];
                                            $Phone=$_POST['Phone'];
                                            SUA_TK($UserID,$UserName,$Password,$Name,$Email,$Phone);
                                            echo"<script>alert('Sửa Thành Công !'); window.location='index.php?ADpage=QL-TK'</script>";
                                             
                                        }
                                     
                                     ?>
                                     </div><!-- col-lg-8--->
                                    </div>   <!--row -->
                                    </div>
                                    </div>
                                    </div><!-- col-lg-12 --->
                                    </div><!-- row --->
                                   