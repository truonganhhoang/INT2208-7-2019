<div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Quản Lý <small>thiết bị</small>
                        </h1>
                    </div>
</div> 
<div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <form>
                                        <input id="search" type="text" />
                                        <input id="submit" type="submit" value="Tìm kiếm" />
                                    </form>
                                    <thead>

                                        <tr>
                                            <th>Mã Thiết Bị</th>
                                            <th>Tên Thiết Bị</th>
                                            <th>Nội dung</th>
                                            <th>NSX</th>
											<th>Ảnh</th>
                                            <th>Số Lượng</th>
                                            <th>ĐVT</th>
                                            <th>Đơn Giá</th>
                                            <th>Tên Loại</th>
                                            <th>Thời gian</th>
											<th>Sửa</th>
                                            <th>Xoá</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php
                                        	$QL_TB=QL_TB();
											foreach($QL_TB as $row)
											{
												echo "
													<tr class='gradeU'>
														<td>".$row['MaThietBi']."</td>
														<td>".$row['TenThietBi']."</td>
                                                        <td>".$row['NoiDung']."</td>
														<td>".$row['NhaSX']."</td>
														<td><img src='../upload/".$row['AnhThietBi']."'   width='70px' height='35px'/></td>
														<td>".$row['SoLuong']."</td>
														<td>".$row['DonViTinh']."</td>
														<td>".$row['DonGia']."</td>
														<td>".$row['TenLoai']."</td>
                                                        <td>".$row['Create_at']."</td>
														<td>
                                                            <a  class='btn btn-xs btn-info' href='?ADpage=Sua-TB&&MaThietBi=".$row['MaThietBi']."'>edit</a>
                                                        </td>
														<td>
                                                            <a class='btn btn-xs btn-danger' href='?ADpage=Xoa-TB&&MaThietBi=".$row['MaThietBi']."' onclick='return deleteAc class='btn btn-xs btn-info' tion();'>delete</a>
                                                        </td>
													</tr>
												";
											}
										
										?>
                                    	
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
                <!-- /. ROW  -->
                