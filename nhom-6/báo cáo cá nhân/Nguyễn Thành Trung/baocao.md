# <center style="color: red;">BÁO CÁO THỰC HÀNH
## <center> Môn: Công nghệ phần mềm - INT2208 7

### Họ và tên: Nguyễn Thành Trung. Mã sinh viên: 17021087. Nhóm 6.
### Đề tài: Xây dựng ứng dụng web bán hàng bằng PHP và mySQLi.

### Câu chuyện người dùng: Là người dùng tôi muốn có các chức năng đăng nhập, đăng ký để tôi có thể thuận tiện theo dõi hoạt động của mình và bảo mật thông tin cá nhân.

* #### Phân tích:
	Khi sử dụng một trang web, người dùng (ở đây cụ thể là người mua hàng) cần có tài khoản riêng. Việc này giúp người dùng có thể dễ dàng quản lý hoạt động của mình trên trang web, có thể bảo mật thông tin cá nhân, lịch sử mua hàng của mình. Và đặc biệt là tiện lợi khi sử dụng dịch vụ. Ví dụ như người dùng sẽ không cần phải nhập liệu nơi giao hàng mỗi khi đặt hàng, hoặc cũng có thể người dùng sẽ được hưởng một số quyền và lợi ích của trang web dành cho thành viên của mình.
    
* #### CÁC TASK LIST CẦN THỰC HIỆN
	* Thu thập câu chuyện người dùng (user story) và viết đặc tả, đánh giá yêu cầu.
		* Liên kết lý thuyết: [tại đây!](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.22k63k6hf7hl)
	* Thiết kế
		* Thiết kế giao diện đăng nhập
			- Sản phẩm: account/signin/index.php. [Link](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/account/signin/index.php)
		* Thiết kế giao diện đăng ký
			- Sản phẩm: account/signup/index.php. [Link](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/account/signup/index.php)
		* Thiết kế giao diện quên mật khẩu
			- Sản phẩm: account/forgot/index.php. [Link](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/account/signin/index.php)
		* CƠ SỞ LÝ THUYẾT
			- [Thiết kế mức cao](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.s1gtpk2qxmyz)
				+ [Trừu tượng](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.2zubv9xjnha7) hóa (sử dụng lập trình có cấu trúc, các đặc tính đóng gói, che giấu thông tin)
				+ Viết [mô tả kỹ thuật](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.9sexdtfjiyvo) (viết chung vào mô tả kỹ thuật của cả nhóm)
				+ Áp dụng [APIs](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.8wbcxnd04jqr)
			- [Thiết kế mức thấp](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.5ctb0cg4d4m0)
	* [Xây dựng](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.ws3padpks5uo)
		* Xây dựng cơ sở dữ liệu (CSDL) người dùng.
			- Sản phẩm: file demo.sql. [Link](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/demo.sql)
		* Xây dựng chức năng đăng nhập (liên kết đến CSDL để kiểm tra độ chính xác)
			- Sản phẩm: account/signin/check.php. [Link](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/account/signin/check.php)
		* Xây dựng chức năng đăng ký (liên kết đến CSDL để kiểm tra độ chính xác)
			- Sản phẩm: account/signup/check.php. [Link](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/account/signup/check.php)
		* Xây dựng chức năng quên mật khẩu (liên kết đến CSDL để kiểm tra độ chính xác)
			- Sản phẩm: account/forgot/check.php. [Link](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/account/forgot/check.php)
		* CƠ SỞ LÝ THUYẾT
			- [Xây dựng code dễ đọc](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.zihsvljsrx0x)
			- [Tránh mã xấu](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.x5jzfha6cshw)
			- [Tái cấu trúc liên tục](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.bxti8dsihgwm)
	* [Kiểm thử](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.rxddpdxv9qym)
		* Xây dựng các ca kiểm thử đơn vị: đưa ra các trường hợp xem ứng dụng có xử lý đúng như mong muốn không.
			- Đăng nhập:
				+ Điền thiếu thông tin
				+ Sai tài khoản
				+ Sai mật khẩu
				+ Lỗi liên kết và thao tác với CSDL
				+ Hợp lệ (Đúng cả tài khoản và mật khẩu)
			- Đăng ký:
				+ Điền thiếu các trường
				+ Dữ liệu đầu vào không đúng (sai cấu trúc email, số điện thoại, mật khẩu không trùng khớp)
				+ Dữ liệu đầu vào bị trùng lặp (đã tồn tại tài khoản)
				+ Lỗi liên kết và thao tác với CSDL
				+ Sau khi đăng ký thành công, có lưu lại dữ liệu người dùng không?
				+ Hợp lệ
			- Quên mật khẩu
				+ Điền thiếu thông tin
				+ Sai thông tin
				+ Lỗi liên kết và thao tác với CSDL
				+ Lỗi khi gửi email trả về mật khẩu cho người dùng
		* Xây dựng các ca kiểm thử hệ thống:
			- Sau khi đăng ký thành công, người dùng đăng nhập lại có chính xác không?
			- Sau khi đăng nhập thành công, khi chuyển qua các trang khác có làm mất dữ liệu người dùng không? (ví dụ đăng nhập chỉ có hiệu lực trên một trang web, khi chuyển trang sẽ mất đăng nhập)
			- Sau khi đăng nhập thành công, các dịch vụ khác của ứng dụng có sử dụng dữ liệu của người dùng không? (ví dụ như khi mua hàng, người dùng đã đăng nhập thì không cần nhập liệu thông tin nữa)
			- Khi sảy ra các lỗi phát sinh, có thông báo cho người dùng không?
		* [Kiểm thử hộp đen](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.zhrswbsdiifd)
			- Kiểm tra dựa trên giao diện, không quan tâm đến thiết kế và mã nguồn
			- Kiểm tra xem giao diện có hoạt động không?
			- Bố cục giao diện, kích thước các phần tử có ổn định không?
			- Các kích thước màn hình khác nhau có làm cho giao diện vỡ bố cục không?
			- Chia giao diện thành nhiều vùng nhỏ để kiểm tra.
		* [Kiểm thử hộp trắng](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.ryzy80x4sqk1)
			- Kiểm tra dựa trên mã nguồn
			- Đảm bảo các lệnh đều được chạy ít nhất một lần
			- Đảm bảo các nhánh của rẽ nhánh được thực hiện ít nhất một lần
	* Lấy ý kiến người dùng và tối ưu hóa giao diện.

### HƯỚNG DẪN SỬ DỤNG CÁC TÍNH NĂNG LIÊN QUAN ĐẾN TÀI KHOẢN NGƯỜI DÙNG
#### 1. ĐĂNG KÝ
* ##### Bước 1: Tại trang chủ click Đăng nhập ở bên phải của thanh menu.
		![alt](https://scontent.fhan2-1.fna.fbcdn.net/v/t1.15752-9/59252965_355578851735621_3750789729801469952_n.png?_nc_cat=102&_nc_oc=AQmr96AVk3OCT0Ns7wM7FxG4hy_CiDfzGYwQzoT7mONHWNq3jVhnQ7GMdTAstwOTd9kmnZWcqrpb_n9hh5XfUCJu&_nc_ht=scontent.fhan2-1.fna&oh=913d8675bba4d89cb73cc50a1930dba8&oe=5D5F664D)
* ##### Bước 2: Click nút Đăng ký
		![alt](https://scontent.fhan2-4.fna.fbcdn.net/v/t1.15752-9/57462917_326851718224730_9191524888714674176_n.png?_nc_cat=104&_nc_oc=AQkGd5QrpbXiMwdbRZ-s9o8DLL8LzFE6ufRGNZF7St5_xPHh9Po_BxsiGPip-TrJDjSpBgi5B38BoBdMQ5VAqFjG&_nc_ht=scontent.fhan2-4.fna&oh=b7d8736cbe339c6e9ae52e8e85c1377f&oe=5D75AD4C)
* ##### Bước 3: Điền đầy đủ thông tin vào các trường dữ liệu, sau đó click nút Đăng ký
		![alt](https://scontent.fhan2-4.fna.fbcdn.net/v/t1.15752-9/59479897_445893239506050_6604085479769899008_n.png?_nc_cat=104&_nc_oc=AQnV9el98BvdPvkcZxZBkJVGNBTy5wlrzdGSM_7PVxn1p_fB4LTW7SQgFod6cVSBLgKLd4dRP17PpZ0QAyqSoZe4&_nc_ht=scontent.fhan2-4.fna&oh=262c18e9a09faa46bcbcff79244b99e1&oe=5D61FAEF)
* ##### Bước 4: Nếu đăng ký thành công thì sẽ chuyển ra trang chủ, nếu không thành công thì bạn thao tác lại các bước trên
		![alt](https://scontent.fhan2-3.fna.fbcdn.net/v/t1.15752-9/59516851_288775062058929_5108495769002835968_n.png?_nc_cat=109&_nc_oc=AQk7v6GQUvzXUNO9ZGK-CVvBpnL-Uu0HuCkJcK1S5HkwKKhoqbtdKcCI8_HJrDGafa77TRiFiFLE3bLL0vf4BP2X&_nc_ht=scontent.fhan2-3.fna&oh=360dcf1e1529fa95e47c0fd2a277d32b&oe=5D73A1FE)
#### 2. ĐĂNG NHẬP
* ##### Bước 1: Tại trang chủ click Đăng nhập ở bên phải của thanh menu.
		![alt](https://drive.google.com/open?id=1Ha5POEdH8_Rxq3nH3NH_VyPdZYis1ZEU)
* ##### Bước 2: Điền đầy đủ thông tin vào các trường, sau đó click nút Đăng nhập
		![alt](https://drive.google.com/open?id=1lBZe8m-2oqR9NaQ6fvK7H3o0283A6fjU)
* ##### Bước 3: Nếu đăng nhập thành công thì sẽ chuyển ra trang chủ, nếu thất bại thì bạn kiểm tra lại thông tin tài khoản hoặc mật khẩu của bạn!
		![alt](https://drive.google.com/open?id=1KppxtdS8XpuHtsnVhFULb-lg2HEmEv-2)
#### 3. QUÊN MẬT KHẨU
* ##### Bước 1: Tại trang chủ click Đăng nhập ở bên phải của thanh menu.
		![alt](https://drive.google.com/open?id=1Ha5POEdH8_Rxq3nH3NH_VyPdZYis1ZEU)
* ##### Bước 2: Click vào Quên mật khẩu
		![alt](https://drive.google.com/open?id=10YeA85cIrQhKBEfhJO1uQ3fve5mZsyCN)
* ##### Bước 3: Hoàn thành thông tin về email và tên đăng nhập
		![alt](https://drive.google.com/open?id=1lyEuLKQ9pfKWpA8_n_VhJSyHsNbrt1cT)
* ##### Bước 4: Nếu thông tin bạn nhập là trùng khớp với thông tin đã đăng ký, mật khẩu sẽ được gửi về trong email cá nhân riêng của bạn, vui lòng kiểm tra hộp thư. Nếu không chính xác bạn cần kiểm tra lại thông tin đã cung cấp!
		![alt](https://drive.google.com/open?id=1Mcc5HM6y4D51br4lEMacf4Qta3OY0BSB)
#### 4. ĐĂNG XUẤT
* ##### Bước 1: Đảm bảo bạn đã đăng nhập thành công
		![alt](https://drive.google.com/open?id=1KppxtdS8XpuHtsnVhFULb-lg2HEmEv-2)
* ##### Bước 2: Click nút Đăng xuất (cạnh bên tên tài khoản của bạn)
		![alt](https://drive.google.com/open?id=1pDHJMl9Ts3Ay14UXjBN1p9070tAhiwxT)
* ##### Bước 3: Đăng xuất thành công, trở lại trang chủ
		![alt](https://drive.google.com/open?id=1_6GrN-8WVDUSSHAHLUOEYZPhJc8p-lvN)
