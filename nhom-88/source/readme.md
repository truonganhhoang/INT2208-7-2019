## Tài liệu kỹ thuật ứng dụng
### 1. Mở đầu
Ngày nay, công nghệ hiện đại và phát triển, con người cũng có nhu cầu về kết nối và giao tiếp với nhau ngày càng tăng. Các ứng dụng của người nước ngoài như Facebook, Tweeter đang dần trở thành một nơi truyền bá những tư tưởng xấu và gây ảnh hưởng không tốt đến trải nghiệm người dùng như lạm dụng thông tin người dùng cho mục đích quảng cáo, làm giảm sự tập trung khi quá phụ thuộc... Với tiêu chí tập trung vào giá trị cốt lõi là giúp kết nối những người bạn người thân với nhau, nhóm 88 đã tạo dựng và giới thiệu sản phẩm Twiteruet nhằm đáp ứng những điều trên.
## 2. Công nghệ sử dụng

#### 2.1 Phía máy chủ

* Nodejs: Nodejs là thư viện được viết bằng C++ và javascript, dựa trên Runtime engine của Google. Nó giúp ta sử dụng javascript bên ngoài môi trường trình duyệt

* Express: Framework được viết bằng nodejs, giúp chúng ta xây dựng ứng dụng web nhanh chóng.

* Mongodb, Mongoose: Mongodb là chương trình cơ sở dữ liệu không cấu trúc, Moongoose giúp chúng ta định nghĩa các lược đồ.

#### 2.2 Phía giao diện người dùng

* Reactjs: Thư viện xây dựng ứng dụng giao diện người dùng do Facebook phát triển

### 3. Phân tích yêu cầu của ứng dụng

#### 3.1. Mô tả bài toán

Bài toán đặt ra là cần ứng dụng cho người dùng chia sẻ trạng thái, sự kiện đang xảy ra.

#### 3.2. Thu thập yêu cầu

Là một người dùng, tôi muốn tạo tài khoản riêng của mình để có thể sử dụng nó.
Là một người dùng, tôi muốn tạo bài viết của mình để chia sẻ với người khác.
Là một người dùng, tôi muốn thay đổi thông tin của mình để đáp ứng yêu cầu của mình.
Là một người dùng, 

#### 3.3. Phân tích yêu cầu

Thiết kế ca sử dụng

* Đăng nhập: ...

* Đăng xuất:  ...

* Đăng trạng thái: ...

* Kết bạn: ...

* Gửi tin nhắn: ...

### 4. Giải quyết bài toán

#### 4.1. Thiết kế giao diện

Sử dụng React để tận dụng khả năng tái sử dụng của các Component và sư đa dạng của các thư viện hỗ trợ như Bootstrap...vv

#### 4.2. Thiết kế cơ sở dữ liệu

todo


### 5. Triển khai phần mềm

#### 5.1 Xây dựng ứng dụng phía người dùng

* Cấu trúc ứng dụng

React chịu trách nhiệm hiện thị giao diện và Redux quản lý trạng thái của giao diện.

![redux-saga](https://cdn-images-1.medium.com/max/1320/1*y-qgopNVlYcVrXgM84iPfA.jpeg)

Cấu trúc ứng dụng:

```
scr-----Action
 |      |------------index.js
 |      |------------authentication.js
 |
 |------Component
 |      |--------dashboard.js
 |      |--------Home.js
 |      |--------Menu.js
 |
 |------Reducers
 |      |--------loginReducer.js
 |      |--------registerReducer.js
 |      |--------index.js
 |
 |------saga
 |      |--------authenticationSaga.js
 |
 |------Stores
 |      |--------configureStore.js
 |
 |------App.js
 |
 |------index.js
```

* Component:

* Quan lý trạng thái

#### 5.2 Xây dựng ứng dụng phía server 

to do


### 6. Kết quả

* Login 
....

![login](https://i.imgur.com/g0j65T7.png)

* Register
...
![dang ky](https://i.imgur.com/gVUnxWH.png)

* Home
....

![home](https://i.imgur.com/HcGzgLo.png)
