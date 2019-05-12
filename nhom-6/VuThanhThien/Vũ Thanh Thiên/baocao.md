# BÁO CÁO THỰC HÀNH
##  Môn: Công nghệ phần mềm- INT2208 7
###  Họ và tên: Vũ Thanh Thiên. Mã sinh viên: 17021041.
###  Nhóm dự án: Nhóm 6.
###  Vai trò: Developer.
###  Đề tài: Xây dựng ứng dụng web bán hàng bằng PHP và mySQLi.
###  I. CÂU CHUYỆN NGƯỜI DÙNG: Là người mua hàng, tôi muốn có chức năng thanh toán  để tôi có thể thanh toán và nhận hóa đơn một cách dễ dàng.
* #### Phân tích :
	     Khi người dùng xem hàng trên trang bán hàng, nếu ưng ý, khách hàng có thể thêm sản phẩm vào giỏ hàng nhưng chỉ có thể thanh toán sau khi đã đăng nhập . Khi người dùng bấm nút thanh toán thì trang sẽ hiện lên hóa đơn,hình thức thanh toán và xác nhận địa chỉ.
* #### CÁC TASK LIST CẦN THỰC HIỆN
	* Thu thập câu chuyện người dùng (user story) và viết đặc tả, đánh giá yêu cầu.
		* Liên kết lý thuyết: [tại đây!](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.22k63k6hf7hl)
	* Thiết kế
		* Thiết kế giao diện giỏ hàng
		* Hóa đơn in ra
		* Thiết kế các nút giỏ hàng, thêm vào giỏ hàng,...và bắt sự kiện
	Link sản phẩm: [đặt hàng](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/orders.php) [thanh toán](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/customer.php)
		* CƠ SỞ LÝ THUYẾT
		- [Thiết kế mức cao](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.s1gtpk2qxmyz)
		+ [Trừu tượng](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.2zubv9xjnha7) hóa (sử dụng lập trình có cấu trúc, các đặc tính đóng gói, che giấu thông tin)
		+ Viết [mô tả kĩ thuật](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.9sexdtfjiyvo) (viết chung vào mô tả kỹ thuật của cả nhóm)
		+ Áp dụng [APIs](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.8wbcxnd04jqr)
		+ [Thiết kế mức thấp](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.5ctb0cg4d4m0)
	* [Xây dựng](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.ws3padpks5uo)
		* Xây dựng cơ sở dữ liệu(CSDL) [link](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/demo.sql)

		* Xây dựng chức năng đưa vào giỏ hàng

		* Xây dựng chức năng thanh toán [link](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/orders.php)

		* Xây dựng chức năng xem giỏ hàng [link](https://github.com/ThanhTrungGVC/INT2208-7-2019/blob/master/nhom-6/ShopWeb/customer.php)

		* CƠ SỞ LÝ THUYẾT
			- [Xây dựng code dễ đọc](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.zihsvljsrx0x)
			- [Tránh mã xấu](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.x5jzfha6cshw)
			- [Tái cấu trúc liêm tục](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.bxti8dsihgwm)
	* [Kiểm thử](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.rxddpdxv9qym)
		* Xây dựng các ca kiểm thử đơn vị: đưa ra các trường hợp xem ứng dụng có xử lý đúng như mong muốn không.
			- Thêm vào giỏ hàng:
				+ Khi chưa đăng nhạp có thêm được mặt hàng vào giỏ hàng không?
				+ Có thêm được sản phẩm vào giỏ hàng không?
				+ Thêm sản phẩm vào giỏ hàng có lỗi không? Có thêm được nhiều mặt hàng cùng loại không?
				+ Có bắt được các sự kiện cho các nút không?
				+ Hiển thị số sản phẩm đã chọn có đúng không?
			- Xem giỏ hàng:
				+ Các sản phẩm hiển thị có lỗi không?
				+ Có chọn được hình thức thanh toán và cách thức thanh toán không?
				+ Tính toán số tiền có lỗi không?
				+ Có xóa được sản phẩm đã chọn hay không?
			- Thanh toán:
				+ Khi click nút thanh toán có hiện ra bảng check thông tin hay không?
				+ Khi đã thanh toán xong in ra hóa đơn có đúng hay không?
				+ Sau khi thanh toán giỏ hàng có rỗng không?
		* Xây dựng các ca kiểm thử hệ thống:
			- Sau khi thêm giỏ hàng, đăng xuất ra vào lại có bị mất thông tin giỏ hàng không?
			- Khi có lỗi xảy ra có thông báo cho người dùng không?

	    * [Kiểm thử hộp đen]((https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.zhrswbsdiifd)
	    - Kiểm tra dựa trên giao diện, không quan tâm đến thiết kế và mã nguồn
		- Kiểm tra xem giao diện có hoạt động không?
		- Bố cục giao diện, kích thước các phần tử có ổn định không?
		- Các kích thước màn hình khác nhau có làm cho giao diện vỡ bố cục không?
		- Chia giao diện thành nhiều vùng nhỏ để kiểm tra.
		* [Kiểm thử hộp trắng](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.ryzy80x4sqk1)
		- Kiểm tra dựa trên mã nguồn
		- Đảm bảo các lệnh đều được chạy ít nhất một lần
		- Đảm bảo các nhánh của rẽ nhánh được thực hiện ít nhất một lần
	* Lấy ý kiến người dùng và tối ưu hóa giao diện.

### II. HƯỚNG DẪN SỬ DỤNG CÁC TÍNH NĂNG LIÊN QUAN ĐẾN THANH TOÁN SẢN PHẨM
#### 1. Thêm sản phẩm vào giỏ hàng
* ##### B1: Tại trang chi tiết sản phẩm click "Thêm vào giỏ hàng"
![alt](https://scontent.fhan5-3.fna.fbcdn.net/v/t1.15752-9/s2048x2048/59558515_2348408648775348_3260713250995568640_n.jpg?_nc_cat=106&_nc_oc=AQnd2yyicjGRBOQBEl0Qkuf2wZ-sOcIYJL0-iZEAG-A_kl2A9SMkGqET70gBXzhmEybcBovpVSL4HBNIDWOIIzOp&_nc_ht=scontent.fhan5-3.fna&oh=ca67358e77e3510bee129e9dedacfa65&oe=5D6629AE)
* ##### B2: Xuất hiện giỏ hàng và sản phẩm đã chọn
![alt](https://scontent.fhan5-2.fna.fbcdn.net/v/t1.15752-9/s2048x2048/59732298_2102570170042704_7279023007467569152_n.png?_nc_cat=110&_nc_oc=AQk-GgKaz74xQT5iBhRFwFufEeeprgr_9erpElGSbpuGKoSBeWyPcLmvTx4_Wh8Q1x1OUvu08zMndIqONhno93oO&_nc_ht=scontent.fhan5-2.fna&oh=f8abf91a1efce7a02eabdfe1d8d2ac89&oe=5D681BD0)
#### 2. xem giỏ hàng
* ##### B1: Click vào giỏ hàng, sẽ hiện ra lựa chọn "Thanh toán" hoặc "Xóa tất cả"
![alt](https://scontent.fhan5-1.fna.fbcdn.net/v/t1.15752-9/s2048x2048/59295822_330890077616597_5972847088235446272_n.png?_nc_cat=109&_nc_oc=AQnzk6CyTj0pc9rPz9yfObP8FaUOwtO3RuSrW5P2J6nvyxpl8EJNWzMIpKFqgHvMtupWL0SlIMRMW8TnHc93A4v9&_nc_ht=scontent.fhan5-1.fna&oh=af7d2e2b3bc5cec7170c0bb0842b2b89&oe=5D6E1010)
* ##### B2: Nếu click "Thanh toán" thì chuyển đến màn hình thanh toán.
![alt](https://scontent.fhan5-5.fna.fbcdn.net/v/t1.15752-9/59375501_2284501828537476_8341472323064299520_n.png?_nc_cat=101&_nc_oc=AQmoRxbDOmC5RgNdaWt0F8kTQFuRME5D3GQwUopY6fN_Aq93R0YdDPTzVtZ1wuSQvhtYF0XCyWrVmI9Mcziifm2-&_nc_ht=scontent.fhan5-5.fna&oh=650098c57b50a0429226ce6b998a9640&oe=5D5DF173)
* ##### B3: Nếu click "Xóa tất cả" thì chuyển đến màn hình chính
![alt](https://scontent.fhan5-5.fna.fbcdn.net/v/t1.15752-9/59425938_484191468786077_5723036483036643328_n.png?_nc_cat=108&_nc_oc=AQmF0dRCjUyDdu54yEkhbldmv4OHfjxekMiUSu2R_3T4ROB94u8jemg8VKs4a7R6Xtz2jujkVXOFI-TBeNFW7BqK&_nc_ht=scontent.fhan5-5.fna&oh=3a83e75e505babacf8bab498a57ec91a&oe=5D69F82C)
#### 3. Thanh toán
* ##### B1: Click "Thanh toán" thì sẽ in ra bảng hiểm tra thông tin khách hàng
![alt](https://scontent.fhan5-2.fna.fbcdn.net/v/t1.15752-9/s2048x2048/59498019_437343107026323_2043371622110330880_n.png?_nc_cat=102&_nc_oc=AQk_rQepdlL3N5GIuCdCEAoaSL31q6MrF71VZtxim5nDmTkMl0kiWQZ04MC7Vla2DaTslhIt5G-xo790Jtyx8N0z&_nc_ht=scontent.fhan5-2.fna&oh=2c4c884dd6cb3360d54a117152b478ea&oe=5D6E45D2)
* ##### B2: Click "Sử dụng thông tin tài khoản để giao dịch. Tiếp tục?" thì in ra hóa đơn và chuyển về màn hình chính
![alt](https://scontent.fhan5-3.fna.fbcdn.net/v/t1.15752-9/59586833_695749724161440_1035041398409134080_n.png?_nc_cat=106&_nc_oc=AQlxAHz1u0Dzoc3vXOjGuOPFoaTUV6PPcfiXUT0OwqEv8fkWKXblI4JWSI-ZHTfII5VeBYra_RE5Ku9toL2QV8uC&_nc_ht=scontent.fhan5-3.fna&oh=09320625066e509ad81394159b2354d9&oe=5D5E5569)
![alt](https://scontent.fhan5-5.fna.fbcdn.net/v/t1.15752-9/59425938_484191468786077_5723036483036643328_n.png?_nc_cat=108&_nc_oc=AQmF0dRCjUyDdu54yEkhbldmv4OHfjxekMiUSu2R_3T4ROB94u8jemg8VKs4a7R6Xtz2jujkVXOFI-TBeNFW7BqK&_nc_ht=scontent.fhan5-5.fna&oh=3a83e75e505babacf8bab498a57ec91a&oe=5D69F82C)