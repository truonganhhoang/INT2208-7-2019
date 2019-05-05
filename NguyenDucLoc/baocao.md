### **Nguyễn Đức Lộc**
### **MSSV: 17020871**
#### Nhóm dự án: Nhóm 5
#### Vai trò: Scrum Master, Developer

# Báo cáo cá nhân môn học Công nghệ phần mềm
#### Hoàn thành khóa học trên edx ([chi tiết](https://github.com/truonganhhoang/INT2208-7-2019/blob/master/NguyenDucLoc/SoftEng1x.jpg))

#### Bài tập nhóm: Dự án web bán hàng online

**Trang web:** [website](http://oderonline.herokuapp.com)

**Lưu trữ code:** [github](https://github.com/DaoDucKhiem/nhom-5/tree/master/nhom-5)

#### Câu chuyện người dùng (user story):

- **Đánh giá sản phẩm sau khi mua hàng** ([chi tiết](https://github.com/DaoDucKhiem/nhom-5/issues/19)).
	1) Xác định yêu cầu, mong muốn: gửi đánh giá và xem đánh giá (specifications).
	2) Chọn quy trình phát triển Scrum (process).
	3) Thiết kế cấu trúc cơ sở dữ liệu và sơ đồ lớp (high level design).
    4) Sử dụng mô hình MVC trên framework Laravel (low level design).
    5) Viết mã ([chi tiết](https://github.com/DaoDucKhiem/nhom-5/commit/c610bcb7bd7e2695103adca1c5db91e79fbd57e2))
    6) Kiểm thử hộp trắng rồi kiểm thử hộp đen từng phần và kiểm thử hệ thống đánh giá (testing).
    7) Nâng cấp tính năng cho trải nghiệm tốt hơn ([lần 1](https://github.com/DaoDucKhiem/nhom-5/commit/1d91c210ab7a78a404b7e51b45f0e059fbf41563), [lần 2](https://github.com/DaoDucKhiem/nhom-5/commit/64f594f744c17e08d5b3af2c8d2f762165275011), [lần 3](https://github.com/DaoDucKhiem/nhom-5/commit/608d7f7068a8d1ced94fe5b0fd367e9547328804), [lần 4](https://github.com/DaoDucKhiem/nhom-5/commit/12b8753406f3151176908ae676bcac4f527624cc))

- <u>Hướng dẫn</u>: Để sử dụng chức năng thì yêu cầu người dùng cần phải
	- Đăng nhập tài khoản (nếu chưa có tải khoản thì đăng ký và xác nhận mail) trên web [orderonline](http://oderonline.herokuapp.com).

	<img src="https://raw.githubusercontent.com/DaoDucKhiem/nhom-5/master/NguyenDucLoc/dang_ky.png" alt="đăng ký" title="dang_ky" width="350" height="100%" /> <img src="https://raw.githubusercontent.com/DaoDucKhiem/nhom-5/master/NguyenDucLoc/dang_nhap.png" alt="đăng nhập" title="dang_nhap" width="350" height="100%" />

	- Mua sản phẩm (thêm các sản phẩm vào giỏ hàng và thanh toán) bất kỳ trước khi đánh giá.

	<img src="https://raw.githubusercontent.com/DaoDucKhiem/nhom-5/master/NguyenDucLoc/trang_chu.png" alt="thêm vào giỏ hàng tại trang chủ" title="trang_chu" width="350" height="100%" /> <img src="https://raw.githubusercontent.com/DaoDucKhiem/nhom-5/master/NguyenDucLoc/mua_hang_1.png" alt="thêm vào giỏ hàng tại trang chi tiết của sản phẩm" title="mua_hang_1" width="350" height="100%" /> <img src="https://raw.githubusercontent.com/DaoDucKhiem/nhom-5/master/NguyenDucLoc/don_hang.png" alt="đơn hàng" title="don_hang" width="350" height="100%" />

	- Quay trở lại trang chi tiết của sản phẩm đã được mua.

	<img src="https://raw.githubusercontent.com/DaoDucKhiem/nhom-5/master/NguyenDucLoc/danh_gia_1.png" alt="sản phẩm được phép đánh giá" title="chua_danh_gia" width="350" height="100%" />

	- Nhấp chọn vào viết đánh giá. Đánh giá số sao cho sản phẩm, viết nhận xét của bạn cho sản phẩm để mọi người đều đọc được. Cuối cùng nhấn gửi để gửi đánh giá và nhân xét về sản phẩm.

	<img src="https://raw.githubusercontent.com/DaoDucKhiem/nhom-5/master/NguyenDucLoc/viet_danh_gia.png" alt="viết đánh giá" title="viet_danh_gia" width="350" height="100%" />

	- Mỗi khách hàng chỉ được có nhiều nhất 1 đánh giá và chỉ được đánh giá sau khi đã mua sản phẩm. Khách hàng được phép thay đổi đánh giá của bản thân tùy thích.

    <img src="https://raw.githubusercontent.com/DaoDucKhiem/nhom-5/master/NguyenDucLoc/danh_gia_2.png" alt="sửa đánh giá" title="sua_danh_gia" width="350" height="100%" />
