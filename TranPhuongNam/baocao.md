# Báo cáo bài tập cá nhân
 - Họ và tên: Trần Phương Nam
 - Mã số sinh viên: 17021200
 - Lớp Công nghệ phần mềm INT2208-7-2019

## Tổng quan
- Mục tiêu: Báo cáo user story do cá nhân phụ trách, các công việc đã thực hiện và kiến thức đã tìm hiểu qua trong khoá học MOOC.
- Nhận xét chung: 
  - Các file bị thay đổi khó theo dõi do lười commit.
  - Tập trung vào việc làm cho trang web chạy mà chưa bám sát kiến thức trong khoá học.
- Bài làm của sinh viên còn nhiều sai sót. Rất mong được thầy giáo và các bạn góp ý.

# User story thực hiện
1. Là một học sinh, tôi có thể đăng nhập trên trang web, để làm bài thi.
- Các kiến thức đã tìm hiểu:
  - Truy vấn cơ sở dữ liệu
  - Tìm hiểu cơ bản về HTML form, Bootstrap collapsse, modal, navbar
  - Tim hiểu sơ lược về kiến trúc Web API
    - Bài giảng: REST development, Technical Representation
  
  - Chia component user-detail
  - Cắt file html sang Angular
  - Refactor tên selector, 
    - Bài giảng: Bad naming
  - Tìm hiểu về một số tính năng cơ bản của Anuglar hỗ trợ lập trình máy khách (client-side), một số công việc được hỗ trợ tự động: chia component, cài đặt thư viện
    - Bài giảng: Automation
- Các công việc đã thực hiện:
  - thêm chức năng đăng nhập [Service gửi thông tin](https://github.com/namtp12/INT2208-7-2019/commit/94c0e5c0b3f606799221e21f07c66e82c892c6e2#diff-4e218c287202317051a8cfbc24d203ea), [File ts](), [File HTML]()
  - thêm chức năng đăng xuất [File HTML](https://github.com/namtp12/INT2208-7-2019/commit/94f9424bd90f750c54f07b8960c680056112694b#diff-d1981a7ab47c50f40fef138051c82904), [File ts](https://github.com/namtp12/INT2208-7-2019/commit/94f9424bd90f750c54f07b8960c680056112694b#diff-b4cd28c59fa00dfe229d2e93d694d057)
  - Thêm bảng dữ liệu người dùng: [thêm bảng dữ liệu người dùng](https://github.com/namtp12/INT2208-7-2019/commit/a1377a9b2ed9b839f6ab7dd5a57a1b48ebf5a84c)
  - Thực hành về route trong express: [thêm web API](https://github.com/namtp12/INT2208-7-2019/commit/83c6ea2670322e3ef537ff61e6742e29dd4f17f7), [thêm truy vấn](https://github.com/namtp12/INT2208-7-2019/commit/2a2c56fe4a7ebb00a8bf7fd7da6862a02892258e)
  
2. Là một học sinh, tôi có thể đăng kí trên trang web, để truy cập trang web.
- Các kiến thức đã tìm hiểu:
  - Về cơ bản giống user story 1 do chức năng là tương tự nhau
- Công việc đã thực hiện:
  - Chỉnh sửa trang đăng ký [File HTML](https://github.com/namtp12/INT2208-7-2019/commit/9d74f7b30d50a557dbe7a979ff63d637d54418df#diff-2fa70f5d3e2979fbafab22b6ee285147), [File ts](https://github.com/namtp12/INT2208-7-2019/commit/9d74f7b30d50a557dbe7a979ff63d637d54418df#diff-cb20f23ff22ac9d4a7648f182cbf2263)
  - Thêm các trường vào bảng người dùng khớp với mẫu form đăng ký [File sql](https://github.com/namtp12/INT2208-7-2019/commit/a8d1067e87bc97ec452d05f4b176c25c7177e4f7)
  - Chỉnh sửa service gửi yêu cầu và route bắt yêu cầu [thêm API đăng ký](https://github.com/namtp12/INT2208-7-2019/commit/f297cf1e23e8a43c8f787da4c642f621bd2b1e88)
