# BÁO CÁO BÀI TẬP CÁ NHÂN

### Họ và tên: Nguyễn Mạnh Hùng
### Lớp: K62-CE
### MSSV: 17020788


## CÔNG VIỆC LÀM ĐÃ HOÀN THÀNH

* ### Câu chuyện người dùng User Story: là người dùng tôi muốn xây dựng giao diện ngữ pháp Tiếng Anh để thuận tiện cho việc vừa học từ vựng vừa học ngữ pháp

  - Thiết kế giao diện dễ sử dụng nhưng cũng phải cân bằng được tính thẩm mỹ, dễ kiểm thử so với khách hàng và nhà phát triển
    - Đặc tả - Làm rõ yêu cầu => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.fvjpas4blmex)
    - Commit:
    
  - Tạo thanh điều hướng, tạo liên kết cho mỗi thành phần trên thanh điều hướng để người dùng dễ tháo tác, tìm phần ngữ pháp mình muốn đọc
    - Đặc tả - Làm rõ yêu cầu => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.fvjpas4blmex)
    - Commit:
    
  - Thiết kế phần nội dung ngữ pháp, những phần hay dùng ưu tiên những phần khách hàng yêu cầu
    - Đặc tả - Làm rõ yêu cầu => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.fvjpas4blmex)
    - Commit:
    
  - Sau đó đề nghị người dùng xem duyệt lại xem đã đúng yêu cầu của họ chưa, nếu chưa thì làm rõ yêu cầu và thiết kế cho phù hợp mong muốn với yêu cầu của họ
    - Đặc tả - Thẩm định yêu cầu => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.a3b33sgbrokp)
    - Commit:
    
  - Kiểm thử lại các tính năng của trang, các địnnh dạng font chữ, kiểu chữ, các thành phần nội dung khác có lỗi không
    - Kiểm thử - Kiểm thử hộp đen => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.zhrswbsdiifd)
    - Commit:
  
  - Kiểm tra lại mã nguồn xem có mã xấu hay không. Nếu có mã xấu thì sửa lại đoạn mã đó
    - Xây dựng - Tái cấu trúc => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.bxti8dsihgwm)
    - Commit:


* ### Câu chuyện người dùng User Story: là người dùng tôi muốn đăng nhập-đăng kí tài khoản bằng Facebook để có thể dễ dàng, nhanh chóng, thuận tiện trong việc đăng nhập-đăng kí.

  - Tạo 1 phần nhỏ giao diện HTML, CSS cho trang đăng kí vào đăng nhập (có thể tham khảo một số template của bootstrap)
    - Đặc tả - Làm rõ yêu cầu => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.fvjpas4blmex)
    - Commit:
    
  - Tạo database bằng MongoDB, sử dụng mongoose để tạo model <thiết lập mô hình MVC> kết nối tương tác với cơ sở dữ liệu
    - Thiết kế ở mức thấp - MVC => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.kehlqoeo6d9r)
    - Commit:
    
  - Liên kết với database sử dụng module mongoose 
    - Đặc tả - Làm rõ yêu cầu => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.fvjpas4blmex)
    - Commit:
    
  - Sau khi kiểm tra mail được đăng kí không bị trung lặp bắt đầu lưu tài khoản của người dùng vào database 
    - Thiết kế mức cao - Trừu tượng - Che dấu dữ liệu => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.94cy1bq9fkl2)
    - Commit:
    
  - Xem lại logic 1 lượt của chức năng đăng nhập ,đảm bảo người dùng đăng nhập để sử dụng các tính năng có trong website 
    - Kiểm thử - Kiểm thử hộp trắng => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.ryzy80x4sqk1)
    - Commit:
    
  - Xây dựng các ca kiểm thử (test case) dựa trên kỹ thuật kiểm thử biên. Yêu cầu độ bao phủ của bộ kiểm thử phải trên 70%. Nếu dưới 70% thì sửa lại test case để đạt yêu cầu về độ bao phủ 
    - Kiểm thử - kiểm thử hộp trắng => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.ryzy80x4sqk1)
    - Commit:
    
  - Kiểm tra lại mã nguồn xem có mã xấu hay không. Nếu có mã xấu thì sửa lại đoạn mã đó
    - Xây dựng - Tái cấu trúc => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.bxti8dsihgwm)
    - Commit:
    
  - Demo sản phẩm với 1 vài người dùng dùng thử sản phẩm để kiểm tra xem còn lỗi về giao diện, logic hay không
    - Đặc tả - Thẩm định yêu cầu => [Link](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.a3b33sgbrokp)
    - Commit:
  
  
  
  
  
  
  
  
  
  
