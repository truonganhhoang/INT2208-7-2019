# Báo cáo bài tập cá nhân. #

## Thông tin sinh viên. ##
  * Họ và tên: Trần Đức Trung
  * Mã số sinh viên: 10721089
  * Nhóm: 9.

## Một số điều lưu ý. ##
  ***Do repo cũ bị conflict quá nặng dẫn đến phải xóa và fork lại nên một số commit bị xóa, có thể xem lại tại [đây](/nhom-9/res/git-log/niits-log.txt).***
  
  ***Một số task có chung commit do thời gian đầu các task làm cùng một khoảng thời gian được commit trong cùng 1 lần.***
  
  ***Các task được đề cập là các task do sinh viên thực hiện, không phải toàn bộ task list của user story do cùng làm với thành viên khác.***
## Các user story chịu trách nhiệm ##
  * ### User story 1: Là một học sinh, tôi muốn có thể làm bài trên trang web, để kiểm tra kiến thức bản thân. ###
    * Làm quen với các công nghệ thống nhất sử dụng để tạo sản phẩm.
      * Học các kiến thức cơ bản về HTML [tài liệu về HTML](https://www.w3.org/html/).
      * Học các kiến thức cơ bản về JavaScript [tài liệu về JavaScript](https://developer.mozilla.org/vi/docs/Web/JavaScript).
      * Học các kiến thức cơ bản về CSS [tài liệu về CSS](https://developer.mozilla.org/vi/docs/Learn/CSS/Introduction_to_CSS) và framework Bootstrap [tài liệu về Bootstrap](https://getbootstrap.com/docs/4.2/getting-started/introduction/).
      * Học các kiến thức cơ bản về Node [tài liệu về Node.js](https://nodejs.org/en/)và các module có sử dụng như [express](https://expressjs.com/), [mysql](https://www.npmjs.com/package/mysql), ....
      * Học các kiến thức cơ bản về Angular [tài liệu về Angular](https://angular.io/) và ngôn ngữ [TypeScript](https://www.typescriptlang.org/).
      * Học các kiến thức cơ bản về mySQL [tài liệu về mySQL](https://www.mysql.com/).
    * Phác thảo giao diện các màn hình chính.
      * Thiết kế và dựng các trang bao gồm welcome, dashboard và quiz ở định dạng HTML phục vụ cho việc phác thảo.
        * Commit: 
          * [Tải lên mã nguồn sơ bộ của các màn hình chính.(xem trong git-log)](/nhom-9/res/git-log/niits-log.txt).
        * Nội dung lý thuyết:
          * [Technical Representation](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.9sexdtfjiyvo) và [Specification](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.22k63k6hf7hl).
      * Cài đặt mã javascript phục vụ cho việc chạy thử tính năng làm bài thi trên web tĩnh.
        * Commit: 
          * [Về cơ bản hoàn thành issue 1, sửa lỗi khi tính điểm, liên kết các trang HTML,.(chỉ còn trong git-log)](/nhom-9/res/git-log/niits-log.txt).
        * Nội dung lý thuyết: 
          * [Code Smells](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.x5jzfha6cshw) (tránh tình trạng tạo mã xấu khi viết)
      * Kiểm thử theo một phiên người dùng.
        * Commit: Không ghi lại kết quả.
        * Nội dung lý thuyết: 
          * [Testing](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.rxddpdxv9qym)
      * Sửa các lỗi phát sinh trong quá trình kiểm thử, tối ưu lại mã nguồn.
        * Commit: 
          * [Về cơ bản hoàn thành issue 1, sửa lỗi khi tính điểm, liên kết các trang HTML,.(chỉ còn trong git-log)](/nhom-9/res/git-log/niits-log.txt).
        * Nội dung lý thuyết: 
          * [Red Green Refactor](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.9bhyebheszoo)
      * Chuyển mã cài đặt sang Angular.
        * Tạo các Component cần thiết phục vụ cho việc hiển thị dữ liệu, thêm Router liên kết các Component.
          * Commit. 
            * [Dựng trang Dashboard](https://github.com/niits/INT2208-7-2019/commit/00859fc80937236b3852e8a645e83ccf9df7066c).
            * [Dựng trang hiển thị khi đang trong quá trình thi (gọi là testing)](https://github.com/niits/INT2208-7-2019/commit/7c734133cb746439a2a2654379ee7a5beb6e42b5)
            * [Tạo khuôn mẫu cho các trang đăng nhập, đăng xuất. Cập nhật một số phương thức trong testing component.](https://github.com/niits/INT2208-7-2019/commit/40b6008f7f8bf48fc75933d9bf38b225a0fb21e4)
            * [Chỉnh sửa trang dashboard và thêm router.](https://github.com/niits/INT2208-7-2019/commit/4d0766c9752da9b5971c3c837ebb05f0cbf37ae1)
            * [Cập nhật title, thay thế việc routing bằng routerLink thành sử dụng các phương thức onCLick.](https://github.com/niits/INT2208-7-2019/commit/12c7cf982623e136746d9baf2967275fe4b35b63)
          * Nội dung lý thuyết: 
            * [Automation](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.2tgzhodk3occ)
        * Tạo các Service phục vụ cho việc lấy và gửi dữ liệu. 
          * Commit: Chỉ kiểm tra mã do thành viên khác viết.
          * Nội dung lý thuyết: 
            * [Automation](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.2tgzhodk3occ)
      * Dựng cơ sở dữ liệu, chuyển cách lưu trữ thông tin các câu hỏi cũng thông tin các bộ câu hỏi sang sử dụng cơ sở dữ liệu SQL.
        * Commit.
          * [Create quizs.sql](https://github.com/niits/INT2208-7-2019/commit/f0f43086390d9f1462691fc7b6e5ccfaabad0a56)
        * Nội dung lý thuyết: 
          * [Technical Representation](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.9sexdtfjiyvo)
      * Xây dựng các API lấy thông tin các bộ câu hỏi và các câu hỏi theo từng bộ.
        * Commit.
          * [Tạo api lấy thông tin các bộ câu hỏi và sử dụng nó trong question service.](https://github.com/niits/INT2208-7-2019/commit/ffefa7f182926f54c6ebb4b4daeacfa8a22b1dbc)
        * Nội dung lý thuyết: 
          * [APIs](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.8wbcxnd04jqr) và [REST development](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.rxyqst9dtgtt)
      * Kiểm thử theo phiên người sử dụng.
        * Commit: Không ghi lại kết quả.
        * Nội dung lý thuyết: 
          * [Kiểm thử](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.rxddpdxv9qym)
      * Sửa các lỗi phát sinh như lỗi do sử dụng phương thức bất đồng bộ không hợp lý.
        * Commit.
          * (Cập nhật giao diện trang testing)[https://github.com/niits/INT2208-7-2019/commit/d6dae3704f3062f6f5766caaf89802c46bcc4086] (commit 2 task cùng một lúc)
        * Nội dung lý thuyết: 
          * [Red Green Refactor](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.9bhyebheszoo)
      * Căn chỉnh lại giao diện thông qua việc căn chỉnh các Component.
        * Commit.
          * [Chỉnh sửa trang dashboard và thêm router.](https://github.com/niits/INT2208-7-2019/commit/4d0766c9752da9b5971c3c837ebb05f0cbf37ae1)
          * [Cập nhật giao diện trang testing](https://github.com/niits/INT2208-7-2019/commit/d6dae3704f3062f6f5766caaf89802c46bcc4086).
          * [Căn chỉnh lại template của register component và thêm datepicker](https://github.com/niits/INT2208-7-2019/commit/71196aa113a6d86a236b5522e41a8baac8a7575f)
        * Nội dung lý thuyết: 
          * [Red Green Refactor](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.9bhyebheszoo)
  ***
  * ### User story 2: Là một học sinh đã đăng nhập, tôi muốn có thể lưu lại và xem lại bài làm của mình mỗi khi làm xong bài, để có thể kiểm tra tiến độ. ###
    * Tiếp tục học về các công nghệ đã sử dụng.
      * Học các kiến thức cơ bản về HTTP request [tài liệu về HTTP request](https://www.w3.org/Protocols/rfc2616/rfc2616-sec5.html).
      * Học cách thiết kế và tạo các RESTful API [tài liệu về RESTful API](https://en.wikipedia.org/wiki/Representational_state_transfer).
      * Làm quen với TSlint [tài liệu về TSlint](https://palantir.github.io/tslint/) và ESlint [tài liệu về ESlint](https://eslint.org/).
      * Học cách truyền dữ liệu trong Angular.
      * Học các sử dụng Promise [tài liệu về Promise](https://developer.mozilla.org/vi/docs/Web/JavaScript/Reference/Global_Objects/Promise) , Observable [tài liệu về Observable](https://angular.io/guide/observables).
    * Cập nhật cơ sở dữ liệu SQL cùng các API.
      * Thêm các bảng chứa thông tin người dùng, lần nộp bài và chi tiết lần nộp bài đó theo từng câu hỏi.
        * Commit.
          * [Sửa lại model Question](https://github.com/niits/INT2208-7-2019/commit/1dfee52ff03c027ca31c06db919d99ff0e8b00b6) (cập nhật cùng các thành phần khác).
        * Nội dung lý thuyết: .
          * [Technical Representation](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.9sexdtfjiyvo) (trong quá trình thiết kế cơ sở dữ liệu).
      * Xây dựng các API lấy thông tin người dùng và kết quả bài làm.
        * Commit.
          * [Sửa lại model Question](https://github.com/niits/INT2208-7-2019/commit/1dfee52ff03c027ca31c06db919d99ff0e8b00b6) (cập nhật cùng các thành phần khác).
          * [Cập nhật chức năng xem lại bài làm.](https://github.com/niits/INT2208-7-2019/commit/e81ea7074d493dff3cc8731bc1a18d06d8bd3376)
        * Nội dung lý thuyết: 
          * [APIs](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.8wbcxnd04jqr) và [REST development](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.rxyqst9dtgtt)
      * Xây dựng các API phục vụ việc chèn thông tin lần nộp bài và chi tiết lần nộp bài đó theo từng câu hỏi vào cơ sở dữ liệu.
        * Commit.
          * [Cài đặt chức năng lưu lại kết quả bài kiểm tra](https://github.com/niits/INT2208-7-2019/commit/27831439a3c2ba3654e50e413f521f46a9fdb2ad)
        * Nội dung lý thuyết: 
          * [APIs](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.8wbcxnd04jqr) và [REST development](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.rxyqst9dtgtt)
    * Tạo các Service chứa các phương thức để gọi các API đã tạo.
      * Commit.
        * [Cập nhật chức năng xem lại bài làm.](https://github.com/niits/INT2208-7-2019/commit/e81ea7074d493dff3cc8731bc1a18d06d8bd3376)
        * [Cài đặt chức năng lưu lại kết quả bài kiểm tra](https://github.com/niits/INT2208-7-2019/commit/27831439a3c2ba3654e50e413f521f46a9fdb2ad)
      * Nội dung lý thuyết: 
        * [Abstraction](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.2zubv9xjnha7)
    * Kiểm thử 
      * Kiểm thử từng phương thức.
        * Commit.
        * Nội dung lý thuyết: 
          * [Testing](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.rxddpdxv9qym)
      * Kiểm thử theo ca sử dụng.
        * Commit.
        * Nội dung lý thuyết: 
          * [Testing](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.rxddpdxv9qym)
    * Sửa các lỗi phát sinh.
      * Commit.
        * [Sửa lỗi Nam mô tả rằng không lấy ra được mảng chứa các câu hỏi.](https://github.com/niits/INT2208-7-2019/commit/f463a2c886552963f355f252ba204086d8876da4) 
        * [Khắc phục lỗi khi xảy ra khi dùng bất đồng bộ.](https://github.com/niits/INT2208-7-2019/commit/100971192f2d6441c2ebb2b446ebc780116cf88f).
        * [Sửa một số lỗi phát sinh của chức năng xem lại bài thi.](https://github.com/niits/INT2208-7-2019/commit/5fe8beddde7cae253e4746870aa6f9f8f8af508c)
      * Nội dung lý thuyết: 
        * [Red Green Refactor](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.9bhyebheszoo)
    * Tái cấu trúc
      * Căn chỉnh lại các Component sau khi sửa đổi giao diện cũng như các phương thức.
        * Commit.
          * [Căn chỉnh lại template của register component và thêm datepicker](https://github.com/niits/INT2208-7-2019/commit/71196aa113a6d86a236b5522e41a8baac8a7575f)
          * [Chỉnh sửa trang dashboard và thêm router.](https://github.com/niits/INT2208-7-2019/commit/4d0766c9752da9b5971c3c837ebb05f0cbf37ae1)
        * Nội dung lý thuyết: 
          * [Refactor](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.bxti8dsihgwm)
      * Tái cấu trúc mã, loại bỏ các phần thừa.
        * Commit.
          * [Căn chỉnh lại template của register component và thêm datepicker](https://github.com/niits/INT2208-7-2019/commit/71196aa113a6d86a236b5522e41a8baac8a7575f)
          * [Chỉnh sửa trang dashboard và thêm router.](https://github.com/niits/INT2208-7-2019/commit/4d0766c9752da9b5971c3c837ebb05f0cbf37ae1)
        * Nội dung lý thuyết: 
          * [Refactor](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.bxti8dsihgwm)
      * Phát hiện và sửa các lỗi không tuân thủ theo linst( TSlint và ESlint).
        * Commit.
          * [Căn chỉnh lại template của register component và thêm datepicker](https://github.com/niits/INT2208-7-2019/commit/71196aa113a6d86a236b5522e41a8baac8a7575f)
          * [Chỉnh sửa trang dashboard và thêm router.](https://github.com/niits/INT2208-7-2019/commit/4d0766c9752da9b5971c3c837ebb05f0cbf37ae1)
        * Nội dung lý thuyết: 
          * [Static Analysis And Linter](https://docs.google.com/document/d/1a4i_31R8WBUAnF91syr1FwBpKoAiTY6rEJt1xWjb74M/edit#heading=h.ok2eiq9jq4hp)
  
## Tổng kết.  ##
  * Nắm được kiến thức cơ bản về quy trình tạo sản phẩm Scrum.
  * Hoàn thành hầu hết các công việc được giao.
  * Một số công việc còn chậm tiến độ, gây nhiều lỗi.
  
