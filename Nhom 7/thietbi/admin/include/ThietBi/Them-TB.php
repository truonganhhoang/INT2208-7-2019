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
                                            <input class="form-control"  required placeholder="Tên Thiết Bị" name="TenThietBi">
                                        </div>

                                         <div class="form-group">
                                            <label>Nội dung</label>
                                            <input class="form-control" type="text" required placeholder="Nội dung" name="NoiDung">
                                        </div>
                                        <div class="form-group">
                                            <label>NSX</label>
                                            <input class="form-control"  required placeholder="NSX" name="NhaSX">
                                        </div>
                                        <div class="form-group">
                                            <label>Chủng Loại</label>
                                            <select class="form-control" name="ChungLoaiID">
                                                <?php
                                                	$chungloai=chungloai();
													foreach($chungloai as $row)
													{
														echo "
															<option value='".$row['ChungLoaiID']."'>
																".$row['TenLoai']."
															</option>
														";
													}
												?>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Ảnh Đại Diện</label>
                                            <input class="form-control" type="file" placeholder="Enter text" name="image_upload">
                                        </div>
										<div class="form-group">
                                            <label>Số Lượng</label>
                                            <input class="form-control"  type="number" required placeholder="SoLuong" name="SoLuong">
                                        </div>
										<div class="form-group">
                                            <label>Đơn Vị Tính</label>
                                            <input class="form-control"  required placeholder="DonViTinh" name="DonViTinh">
                                        </div>
										<div class="form-group">
                                            <label>Đơn Giá</label>
                                            <input class="form-control"  type="number" required placeholder="Đơn Giá" name="DonGia">
                                        </div>
                                        <div class="form-group">
                                        	<button class="btn btn-info" name="BtnThemTB">Thêm Thiết Bị</button>
                                            <button class="btn btn-success" type="reset" >Reset</button>
                                        </div>
                                     </form>
                                     <?php
									 		
											
                                     		if(isset($_POST['BtnThemTB']))
											{   $TenThietBi=$_POST['TenThietBi'];
                                                $NoiDung=$_POST['NoiDung'];
												$NhaSX=$_POST['NhaSX'];
												$SoLuong=$_POST['SoLuong'];
												$DonViTinh=$_POST['DonViTinh'];
												$DonGia=$_POST['DonGia'];
												$ChungLoaiID=$_POST['ChungLoaiID'];
												if($_FILES["image_upload"]["name"])
												{
													$image_name=$_FILES["image_upload"]["name"];
													$image_path=$_FILES["image_upload"]["tmp_name"];
													$new_image_path="../upload/".$image_name;
													$image_upload=move_uploaded_file($image_path, $new_image_path);
													 //khai báo thuộc tính 'enctype' chỗ form mới chạy được! 
												}
												
												
												Them_TB($TenThietBi,$NoiDung,$NhaSX,$image_name,$SoLuong,$DonViTinh,$DonGia,$ChungLoaiID);
												echo"<script>alert('Thêm Thành Công !'); window.location='index.php?ADpage=QL-TB'</script>";
											}
									 
									 ?>
                                     </div><!-- col-lg-8--->
                                    </div>   <!--row -->
                                    </div>
                                    </div>
                                    </div><!-- col-lg-12 --->
                                    </div><!-- row --->
                                   