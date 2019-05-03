## Sinh viên: ĐÀO ĐỨC KHIÊM
## Mã sinh viên: 17020837
### Nhóm dự án: Nhóm 5
### Vai trò: Product Owner, Developer.

# Báo cáo cá nhân môn học Công nghệ phần mềm
====
* Hoàn thành khó học trên edx ([chi tiết](https://github.com/DaoDucKhiem/nhom-5/blob/master/DaoDucKhiem/SoftEng1x.jpg))
* Bài tập nhóm: **Dự án web bán hàng online** [website](http://Oderonline.herokuapp.com), [Github](https://github.com/DaoDucKhiem/nhom-5/tree/master/nhom-5)
* User story: Là một người mua hàng, tôi muốn có thể tìm kiếm sản phẩm trên trang web thông qua các từ khóa để tôi có thể nhanh chóng tìm được sản phẩm mà mình muốn mua.
	[chi tiết](https://github.com/DaoDucKhiem/nhom-5/issues/18):
	a, Xác định yêu cầu, mong muốn: 
		- Tìm kiếm sản phẩm ngay tại trên web (yêu cầu chức năng - specifications)
		- Tìm kiếm nhanh và chính xác sản phẩm hoặc những sản phẩm có liên quan đến từ khóa người dùng nhập (yêu cầu phi chức năng - specifications)
	Yêu cầu này đã đảm bảo nguyên tắc INVEST guideline.
	b, Quy trình phát triển Scrum (process)
	c, Thiết kế cấu trúc cơ sở dữ liệu và sơ đồ lớp (high level design)
	d, Sử dụng mô hình MVC của framework Laravel (low level design)
	e, Viết mã([chi tiết](https://github.com/DaoDucKhiem/nhom-5/blob/master/nhom-5/OderOnline/app/Http/Controllers/PageController.php))
	g, Kiểm thử:
		- Kiểm thử hộp trắng đảm bảo mã nguồn không bị lỗi, build và run được.
		- Sử dụng localhost để chỉnh bố cục cho thanh tìm kiếm trên web
		- Sử dụng localhost kiểm tra xem web có cho gõ vào thanh tìm kiếm hay không
		- Sử dụng localhost để kiểm tra xem web trả về có đúng kết quả tìm kiếm hay không
	h, Tái cấu trúc: Rà soát mã nguồn để đảm bảo rõ ràng, đơn giản, sạch sẽ và không có mã xấu.(construction)
* Hướng dẫn sử dụng:
1. Mở trình duyệt của bạn lên. Google chrome hoặc FireFox,... tùy trình duyệt bạn cài đặt.

2. Gõ vào ô tìm kiếm địa chỉ sau: Oderonline.herokuapp.com

3. Sau khi trang web hiện ra bạn sẽ nhìn thấy ngay ô tìm kiếm màu trắng nằm ngang hàng với Logo của website. Hãy click vào đó và gõ từ khóa bạn cần tìm. ví dụ: Bánh mặn, Chocolate,...
Rồi sau đó bạn click vào icon ![search](look.png) hoặc hãy nhấn Enter trang sẽ trả về kết quả cho bạn.

![type keyword](typekeyword.png)

4. Kết quả hiển thị sẽ cho biết được số sản phẩm tìm được và thông tin của từng sản phẩm bao gồm hình ảnh, giá. bạn click vào **Detail** để xem chi tiết về sản phẩm và biểu tượng giỏ
hàng để mua sản phẩm.

![result](result.png)

Nếu bạn nhập từ không đúng hoặc sản phẩm đó đã hết hàng hoặc chưa có bày bán thì kết quả sẽ trả về là **hiện chưa có sản phẩm này**

![result1](result1.png)
