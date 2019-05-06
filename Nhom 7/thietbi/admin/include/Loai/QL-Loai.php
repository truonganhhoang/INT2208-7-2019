<div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Quản Lý <small>loại</small>
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
                                    <thead>
                                    <form>
                                        <input id="search" type="text" />
                                        <input id="submit" type="submit" value="Tìm kiếm" />
                                    </form>
                                        <tr>
                                            <th>ChungLoaiID</th>
                                            <th>Tên Loại</th>
                                            <th>Thời gian</th>
											<th>Sửa</th>
                                            <th>Xoá</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php
                                        	$QL_Loai=QL_Loai();
											foreach($QL_Loai as $row)
											{
												echo "
													<tr class='gradeU'>
											          <td>".$row['ChungLoaiID']."</td>
													  <td>".$row['TenLoai']."</td>	
                                                      <td>".$row['Create_at']."</td>			
														<td><a class='btn btn-xs btn-info' href='?ADpage=Sua-Loai&&ChungLoaiID=".$row['ChungLoaiID']."'>edit</a></td>
														<td><a class='btn btn-xs btn-danger' href='?ADpage=Xoa-Loai&&ChungLoaiID=".$row['ChungLoaiID']."' onclick='return deleteAction();'>delete</a></td>
													</tr>
												";
											}
										
										?>
                                    	
                                        
                                    </tbody>
                                </table>
                            </di>
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
                <!-- /. ROW  -->
                