

# Lê Xuân Vinh


# MSSV: 17021133
  **Nhóm dự án: Nhóm 07**
  **Vai trò: Developer , Scrum Master**
 
  # Báo cáo nhập môn học công nghệ phần mềm
  * Hoàn thánh khóa học trên edx.
  * Bài tập nhóm: Xây dựng Website Quản lí thiết bị.
  * User story: Là người dùng tôi muốn có các chức năng đăng nhập, đăng ký để tôi có thể thuận tiện theo dõi hoạt động của mình và bảo mật thông tin cá nhân.

**Phân tích:**
	Khi sử dụng một trang web, người dùng (ở đây cụ thể là người mua hàng) cần có tài khoản riêng. Việc này giúp người dùng có thể dễ dàng quản lý hoạt động của mình trên trang web, có thể bảo mật thông tin cá nhân, lịch sử mua hàng của mình. Và đặc biệt là tiện lợi khi sử dụng dịch vụ. Ví dụ như người dùng sẽ không cần phải nhập liệu nơi giao hàng mỗi khi đặt hàng, hoặc cũng có thể người dùng sẽ được hưởng một số quyền và lợi ích của trang web dành cho thành viên của mình.
    
* #### CÁC TASK LIST CẦN THỰC HIỆN
	* Thu thập câu chuyện người dùng (user story) và viết đặc tả, đánh giá yêu cầu.
		
	* Thiết kế
		* Thiết kế giao diện đăng nhập
			
		* Thiết kế giao diện đăng ký
			
		
			
		
					
	* Xây dựng
		* Xây dựng cơ sở dữ liệu (CSDL) người dùng.
			
		* Xây dựng chức năng đăng nhập (liên kết đến CSDL để kiểm tra độ chính xác)
		
		* Xây dựng chức năng đăng ký (liên kết đến CSDL để kiểm tra độ chính xác)
			
		* Xây dựng chức năng quên mật khẩu (liên kết đến CSDL để kiểm tra độ chính xác)
			
	
			
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
			
		* Xây dựng các ca kiểm thử hệ thống:
			- Sau khi đăng ký thành công, người dùng đăng nhập lại có chính xác không?
			- Sau khi đăng nhập thành công, khi chuyển qua các trang khác có làm mất dữ liệu người dùng không? (ví dụ đăng nhập chỉ có hiệu lực trên một trang web, khi chuyển trang sẽ mất đăng nhập)
			- Sau khi đăng nhập thành công, các dịch vụ khác của ứng dụng có sử dụng dữ liệu của người dùng không? (ví dụ như khi mua hàng, người dùng đã đăng nhập thì không cần nhập liệu thông tin nữa)
