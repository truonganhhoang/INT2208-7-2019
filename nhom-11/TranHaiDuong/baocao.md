## Câu chuyện người dùng

**Là** một người yêu bóng đá 
**tôi muốn** biết những thông tin cơ bản về các đội bóng như lịch thi đấu, kết quả, các cầu thủ cũng như một số thông tin liên quan đến đội bóng
**để** bổ sung cho bản thân những hiểu biết về bóng đá.

## Phân tích câu chuyện
- Tạo giao diện thông tin về 1 đội bóng.
	[Mẫu thiết kế MVP](http://bit.ly/2IXYcFY)	

	**Github commit**
	https://github.com/duong17020661/INT2208-7-2019/commit/a158529fc40498519b53ec5ddcf16b044ff3903c
	https://github.com/duong17020661/INT2208-7-2019/commit/a97864343ee541d8ca10c2bd85f4e44327a19f73

- Tạo cơ sở dữ liệu về các đội bóng

	1.Danh sách cầu thủ
	**Github commit**
		https://github.com/duong17020661/INT2208-7-2019/commit/3c8ba2bf5e6e58a63ba4d26f2e2a2d0f50f7b696
	
	2.Biểu tượng đội bóng và áo thi đấu.
	**Github commit**	
		https://github.com/duong17020661/INT2208-7-2019/commit/7c7007d73d5ce806f9e9f6dcab04be9a028d48c9

	3.Kết quả và lịch thi đấu.
	**Github commit**
		https://github.com/duong17020661/INT2208-7-2019/commit/01ad2ffdda12860526f38616a0671c3f02320a7a

- Liên kết cơ sở dữ liệu với ứng dụng và sử dụng.
	**Github commit**
		https://github.com/duong17020661/INT2208-7-2019/commit/7c7007d73d5ce806f9e9f6dcab04be9a028d48c9
		https://github.com/duong17020661/INT2208-7-2019/commit/24f5c803c1d010d04c03de6b2b367b57a344ac65
- Thêm thông tin cơ bản: Huấn luyện viên, tên đội bóng, sân nhà.
	**Github commit**
		https://github.com/duong17020661/INT2208-7-2019/commit/271d32a9c273070f80331817f98e04ccfe9e62e5
		https://github.com/duong17020661/INT2208-7-2019/commit/a5fd15da5dafc640fac6c6c17c768054a2cc2686
		https://github.com/duong17020661/INT2208-7-2019/commit/b8f1038b048a53c2c5a2daecba722e51de73a3dd

- Demo code
	1. Chạy thử và xem các chức năng đã sử dụng được chưa.
	[Phân tích vùng biên - kiểm thử hộp đen](http://bit.ly/2vq5xGh)
	2. Nếu có lỗi sửa và quay lại 1.
	**Github commit**
    https://github.com/duong17020661/INT2208-7-2019/commit/b8f1038b048a53c2c5a2daecba722e51de73a3dd
	
- Review code
	1.Xem code có mã mùi có thể làm ảnh hưởng đến việc phát triển hay không.
	[Mã mùi](http://bit.ly/2J4HML)
	2.Phân tích source để phát hiện những lỗi sai, bug, vi phạm lỗi sai viết code.
	[Phân tích tĩnh](http://bit.ly/2UOhzDs)
	**Github commit**
- Tái cấu trúc 
	[Tái cấu trúc](http://bit.ly/2XWSZCx)
- Thử chạy ở chế độ điện thoại
	**Github commit**
## Giới thiệu
    Đây là một chức năng giúp ta biết về những thông tin cơ bản của một đội bóng để giúp chúng ta dễ dàng hơn trong việc theo dõi các trận đấu cũng như giúp ta biết thêm một số thông tin cơ bản về các đội bóng chúng ta theo dõi.
    Giao diện chức năng:
![alt](header.png)
    Ngay khi giao diện hiện ra ta có thể thấy những thông tin cơ bản của một đội bóng bao gồm tên sân vận động, huấn luyện viên trưởng đội bóng, biểu tượng cũng như áo thi sân nhà của đội bóng đó. Ở bên dưới là danh sách các cầu thủ được đăng ký ở đội hình chính và những thông tin  về các cầu thủ đó.
![alt](player.png)
    Bên cạnh danh sách cầu thủ là thông tin về lịch thi đấu và kết quả của đội bóng đó ở giải quốc nội.
    ![alt](results.png)
    Tiếp đến là phần giới thiệu các thông tin bên lề đội bóng, trang chủ và nơi theo dõi hoạt động của đội bóng đó.
![alt](overview.png)
    Cuối cùng là một số thống kê về phong độ sân nhà, sân khách và các thông số cơ bản như thẻ vàng, thẻ đỏ, số bàn thắng bàn thua. 
![alt](statictis.png)
    
    
## Cách xem thông tin đội bóng (cách sử dụng)
Có 2 cách để xem thông tin
- **Cách 1:** Bấm vào tên các đội bóng ở trang chủ
    ![alt](way1.png)
- **Cách 2:** Vào trang thông tin các giải đấu (Các giải đấu -> Chọn giải) sau đó bấm vào biểu
tượng đội bóng muốn xem.
    ![alt](way2-1.png)
    ![alt](way2-2.png)
