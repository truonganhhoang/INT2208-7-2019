<div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Quản Lý <small>tài khoản</small>
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
                                            <th>ID</th>
                                            <th>Tên đăng nhập</th>
                                            <th>Mật khẩu</th>
                                            <th>Tên đầy đủ</th>
                                            <th>Gmail</th>
                                            <th>Số Điện Thoại</th>
											<th>Sửa</th>
                                            <th>Xoá</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php
                                        	$QL_TK=QL_TK();
											foreach($QL_TK as $row)
											{
												echo "
													<tr class='gradeU'>
														<td>".$row['UserID']."</td>
														<td>".$row['UserName']."</td>
                                                        <td>".$row['Password']."</td>
														<td>".$row['Name']."</td>
                                                        <td>".$row['Email']."</td>
                                                        <td>".$row['Phone']."</td>
														<td>
                                                            <a  class='btn btn-xs btn-info' href='?ADpage=Sua-TK&&UserID=".$row['UserID']."'>edit</a>
                                                        </td>
														<td>
                                                            <a class='btn btn-xs btn-danger' href='?ADpage=Xoa-TK&&UserID=".$row['UserID']."' onclick='return deleteAc class='btn btn-xs btn-info' tion();'>delete</a>
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
                