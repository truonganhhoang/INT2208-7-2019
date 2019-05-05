## **Đinh Sỹ Hào**
### MSSV: 17020722
### Nhóm dự án: Nhóm 5
### Vai trò: Developer

# Báo cáo cá nhân môn học Công nghệ phần mềm
#### Hoàn thành khóa học trên edx ([chi tiết](https://github.com/truonganhhoang/INT2208-7-2019/blob/master/DinhSyHao/SoftEng1x.jpg))

#### Bài tập nhóm: Dự án web bán hàng online

**Trang web:** [website](https://oderonline.herokuapp.com)

**Lưu trữ code:** [github](https://github.com/DaoDucKhiem/nhom-5/tree/master/nhom-5)

* **Câu chuyện người dùng (User story):** Là một người bán hàng, tôi muốn mọi người có thể truy cập đến ứng dụng một cách tiện lợi và an toàn qua hệ thống website để khách hàng có thể dễ dàng mua được sản phẩm mà không bị mất an toàn thông tin.
	([chi tiết](https://github.com/DaoDucKhiem/nhom-5/issues/16)):
	1) Xác định yêu cầu, mong muốn: 
		- Mọi máy tính có kết nối mạng đều có thể truy cập vào trang web (yêu cầu chức năng - specifications)
		- Hiển thị đúng thông tin trang web không bị lỗi (yêu cầu phi chức năng - specifications)
	Yêu cầu này đã đảm bảo nguyên tắc INVEST guideline.
	2) Quy trình phát triển Scrum (process)
	3) Thiết kế cấu trúc cơ sở dữ liệu và sơ đồ lớp (high level design)
	4) Sử dụng mô hình MVC của framework Laravel (low level design)
	5) Viết mã([chi tiết](https://github.com/DaoDucKhiem/nhom-5/blob/master/DinhSyHao/Deploy%20guide.txt))
	6) Kiểm thử:
		- Kiểm thử lại trang web ở chế độ công khai.
		- Kiểm thử lại trang web khi up một cơ sở dữ liệu mới lên.
		- Kiểm thử hình ảnh hiển thị của trang web dưới dạng https thay vì http.
		- Kiểm thử lại tính năng đăng nhập bằng Facebook và Google.
		- Kiểm thử lỗi nginx khi ấn vào các đường link.
	7) Tái cấu trúc: Rà soát mã nguồn để đảm bảo rõ ràng, đơn giản, sạch sẽ và không có mã xấu.(construction)
	
* **Giới thiệu sản phầm:**
	- Mở trình duyệt lên và gõ "oderonline.herokuapp.com" đợi trình duyệt điều hướng sẽ thấy trang web tự động được đưa về dưới dạng https.
	- Khi đăng nhập bằng Facebook hay Google thì có thể callback từ trang để lấy thông tin.
	- Khi thêm đánh giá, thêm sản phẩm hay mua một mặt hàng thì cơ sở dữ liệu online sẽ tự động được cập nhật.
	
