### Họ và tên : Nguyễn Đức Anh 
### Lớp : K62-CF
### MSSV : 17020576


## BÁO CÁO TỔNG KẾT MÔN HỌC
##### CÔNG VIỆC LÀM ĐÃ HOÀN THÀNH
* Câu chuyện người dùng User Story : là người dùng tôi muốn có khung đăng nhập và đăng kí để người dùng có thể tương tác với website và có thể quản lý thông tin của người dùng
[link]( https://github.com/manhung99/INT2208-7-2019/issues/14)

- [x] Tạo form giao diện html,css cho trang đăng kí vào đăng nhập ( có thể tham khảo một số template của bootstrap ) responsive giao diện phù hợp cho cả mobile và desktop . (Phần đặc tả- làm rõ yêu cầu)
- [x] Tạo database bằng mongodb , sử dụng mongoose để tạo model <thiết lập mô hình MVC> (Phần thiết kế ở mức thấp - MVC)
 kết nối tương tác với cơ sở dữ liệu
- [x] Liên kết với database sử dụng module mongoose (Phần đặc tả- làm rõ yêu cầu)
- [x] Thực hiện các chức năng rằng buộc khi người dùng đăng kí ( VD : điền đầy đủ các trường còn thiếu nếu người dùng bỏ qua , mật khẩu ít nhất 8 kí tự trong đó có ít nhất 1 kí tự chữ , 1 kí tự số  và 1 kí tự đặng biệt , email đăng kí phải là duy nhất không trùng lặp ) , 
- [x] Ở phần viết hàm đăng nhập cần chú ý hiện ra các thông báo nếu người dùng chưa thực hiện đủ các bước hoặc sai ở bước nào đó, thông báo cho người dùng nếu họ điền sai email hay password đã được đăng kí.(Phần đặc tả- làm rõ yêu cầu)
- [x] Sau khi kiểm tra mail được đăng kí không bị trung lặp bắt đầu lưu tài khoản của người dùng vào database , trước đó cần hash password của tài khoản < có thể sử dụng module bcrypt của nodejs express > để tăng cường tính bảo mật cho tài khoản (Thiết kế mức cao - Trừu tượng - Che dấu dữ liệu)
- [x] Ở bước đăng nhập ( tham khảo module passport của nodejs express ) để xác thực tài khoản người dùng bằng email và password (dùng session để lưu trữ tạm thời tài khoản của người dùng) (Phần phân tích thiết kế làm rõ yêu cầu)
- [x] Xem lại logic 1 lượt của chức năng đăng nhập , đảm bảo người dùng đăng nhập để sử dụng các tính năng có trong website (Kiểm thử - Kỹ thuật kiểm thử hộp trắng)
- [x] Có thể sử dụng tài khoản của google ( lấy thông tin từ tài khoản google của người dùng )
 để đăng nhập . (Phần đặc tả - làm rõ yêu cầu)
- [x] Xây dựng các ca kiểm thử (test case) dựa trên kỹ thuật kiểm thử biên. Yêu cầu độ bao phủ của bộ kiểm thử phải trên 70%. Nếu dưới 70% thì sửa lại test case để đạt yêu cầu về độ bao phủ.(Phần kiểm thử - kiểm thử hộp trắng)
- [x] Kiểm tra lại mã nguồn xem có mã xấu hay không. Nếu có mã xấu thì sửa lại đoạn mã đó. (Phần xây dựng - Tái cấu trúc)
- [x] Demo sản phẩm với 1 vài người dùng dùng thử sản phẩm để kiểm tra xem còn lỗi về giao diện (giao diện cho mobile đã được responsive chưa) , logic hay không. (Phần đặc tả - Làm rõ yêu cầu)

* Câu chuyện người dùng là một người dùng tôi muốn có tính năng (hay khóa học) học từ vựng trên website để có thể nâng cao kiến thức về tiếng anh của bản thân , tăng kiến thức về từ vựng trong tiếng anh
[link]( https://github.com/manhung99/INT2208-7-2019/issues/17)

- [x] Xây dựng trang html dựa trên UI của Elight Learning English (sử dụng template của bootstrap , package của React để làm giao diện cũng như hiệu ứng cho trang)(Phần đặc tả - Làm rõ yêu cầu)
- [x] Chia nhỏ khóa học thành các chủ đề tương ứng, giúp người dùng tiếp cận khóa học một cách dễ dàng nhất (Phần đặc tả- làm rõ yêu cầu) (Phần đặc tả làm rõ yêu cầu , thiết kế mức cao, Trừu tượng - sự phân rã)
- [x] Xây dựng database phù hợp, đúng ngữ pháp , câu từ , chính tả , hình ảnh để tạo 1 trải nghiệm tốt nhất cho người dùng (Phần đặc tả - Làm rõ yêu cầu)
- [x] Sử dụng Nodejs và Axios sử dụng như API để lấy dữ liệu từ server trả về JSON cho React quản lí (Phần thiết kế mức cao API)
- [x] Lưu các key hay link dẫn bảo gồm tên đăng nhập cũng như mật khẩu đến dữ liệu Database vào .env để tăng tính bảo mật khi public ứng dụng (Thiết kế mức cao - Che dấu bảo mật dữ liệu)
- [x] thiết kế khung câu hỏi và câu trả lời , khung trả lời bao gồm 1 ảnh miêu tả ý nghĩa của từ đó và nghĩa tiếng Anh của từ , mỗi câu hỏi gồm 3 câu trả lời có button để kiểm tra đáp án mà người dùng đã chọn(Phần đặc tả - Làm rõ yêu cầu)
- [x] Thông báo cho người dùng khi họ hoàn tất một câu hỏi trắc nghiệm , sai hay đúng và đáp án đúng của câu hỏi đó là gì , có thể giải thích thêm (Phần đặc tả - Làm rõ yêu cầu)
 - [x] Ở mỗi câu mà người dùng tích chính xác đáp án , sẽ được cộng điểm tương ứng cho câu hỏi đó và sau khi kết thúc lượt quiz sẽ thông báo cho người dùng kết quả của phần quiz đó(Phần đặc tả - Làm rõ yêu cầu)
- [x] Xây dựng tính năng này trên một trang duy nhất ( single web-page application ) để tăng tốc độ cho website không phải reload quá nhiều tăng trải nghiệm người dùng ( tham khảo 1 số freamwork liên quan như reactjs , angular và redux )(Phần đặc tả - Làm rõ yêu cầu)
- [x] Lấy ý kiến người sử dụng để cải tiến tính năng của hệ thống (Phần đặc tả - Làm rõ yêu cầu)
- [x] Rà soát mã nguồn , tối ưu mã nguồn (Thanh lọc những component , ảnh , file json mà không sử dụng tới) , tận dụng tối đa các component khi sử dụng (Phần xây dựng - Tái cấu trúc)
- [x] Đảm bảo tính logic của hệ thống , tạo các test case để tìm lỗi và rà soát lỗi ( luôn đảm bảo đúng về ngữ pháp , câu từ , chính tả )(Phần kiểm thử hộp trắng)



* Bài tập cá nhân :
	- Hoàn thành khóa học [Software Engineering Introduction](https://github.com/manhung99/INT2208-7-2019/blob/master/NguyenDucAnh/SoftEng1x.jpg).
	- Tham gia viết báo cáo bài tập nhóm:https://docs.google.com/document/d/1R9KKIZnqUqBSC1Nzxn2-WshKTOHEBIUMqsyG0OeucZ0/edit?fbclid=IwAR1vZREk1uFJ1yh25uiHaqN5OqNavLnSwdBq0A2sxOCuRms4sAm4kvV1L34


### Kiến thức để xây dựng phần user story :
* Để xây dựng User Story em đã học hỏi công nghệ và tham khảo các tài liệu:
	* [HTML](https://www.w3schools.com/html/default.asp)
	* [CSS](https://www.w3schools.com/css/default.asp)
	* [Bootstrap](https://www.w3schools.com/bootstrap/default.asp)
	* [Tài liệu khóa học SoftEng 1x](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.nzv2vaiffe4k)
	* [Nodejs](https://nodejs.org/en/)
	* [Reactjs](https://reactjs.org/docs/)
	* [MongoDb,Mongoose](https://github.com/Automattic/mongoose)

## Giới thiệu và hướng dẫn
* Ở phần đăng kí
![register](https://user-images.githubusercontent.com/41587478/57239918-72ae4500-7057-11e9-9b61-e2608b9ada8c.png)
#### Bạn điền đầy đu các trường mà ứng dụng yêu cầu , và lưu ý 1 email chỉ có thể tạo được 1 tài khoản , mật khẩu yêu cầu có ít nhất 8 kí tự trong đó có ít nhất 1 kí tự số , chữ và một kí tự đặc biệt (#$%^&!@....) , avatar có thể sử dụng các đuôi jpg,png,jpeg ... 
 Sau đó ấn Sign Up để tạo mới một tài khoản

* Ở phần đăng nhập 
![login](https://user-images.githubusercontent.com/41587478/57239913-704beb00-7057-11e9-8bcf-c23f0b500a6a.png)
#### Sử dụng tài khoản đã được tạo ở trên hoặc có thể sử dụng tài khoản của google hoặc facebook cá nhân để đăng nhập

* Phần chọn khóa học 
![image](https://user-images.githubusercontent.com/41587478/57240659-3f6cb580-7059-11e9-9de0-c3a0d649216d.png)
![thêm](https://user-images.githubusercontent.com/41587478/57240076-df294400-7057-11e9-83ba-138b0fcbf320.png)
#### Chọn khóa học ấn bắt đầu và sau đó chọn chủ đề mà bạn muốn học từ vựng (Trước tiên phải đăng nhập để sử dụng tính năng này)

* Ở phần chọn đáp án trắc nghiệm
![quiz](https://user-images.githubusercontent.com/41587478/57240095-e94b4280-7057-11e9-84c4-e109396506ab.png)
#### Chọn ra đáp án được cho là đúng nhất sau đó ấn kiểm tra , nếu đúng hệ thống sẽ thông báo cho bạn đã đúng bằng ô tích V xanh và bạn được cộng điểm , còn sai thì bạn sẽ được thông báo đáp án và ô tích X đỏ nói rằng bạn đã sai ở câu hỏi đó .

## Tổng kết: Qua tham gia khóa học Công nghệ phần mềm, em đã học thêm nhiều kiến thức để tạo nên một sản phẩm phần mềm theo một quy trình Scrum và biết cách tạo ra một phần mềm nhỏ dựa trên cơ sở kiến thức của bản thân cũng như kỹ năng làm việc nhóm , mong qua khóa học em sẽ tìm hiểu được thêm nhiều điều hơn nữa .

