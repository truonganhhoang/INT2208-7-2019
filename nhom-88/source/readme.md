## Tài liệu kỹ thuật ứng dụng

### 1. Công nghệ sử dụng

#### 1.1 Phía máy chủ

* Nodejs: Nodejs là thư viện được viết bằng C++ và javascript, dựa trên Runtime engine của Google. Nó giúp ta sử dụng javascript bên ngoài môi trường trình duyệt

* Express: Framework được viết bằng nodejs, giúp chúng ta xây dựng ứng dụng web nhanh chóng.

* Mongodb, Mongoose: Mongodb là chương trình cơ sở dữ liệu không cấu trúc, Moongoose giúp chúng ta định nghĩa các lược đồ.

#### 1.2 Phía giao diện người dùng

* Reactjs: Thư viện xây dựng ứng dụng giao diện người dùng do Facebook phát triển

### 2. Phân tích yêu cầu của ứng dụng

#### 2.1. Mô tả bài toán

Bài toán đặt ra là cần ứng dụng cho người dùng chia sẻ trạng thái, sự kiện đang sảy ra.

#### 2.2. Thu thập yêu cầu

// user story

#### 2.3. Phân tích yêu cầu

Thiết kế ca sử dụng

* Đăng nhập: ...

* Đăng xuất:  ...

* Đăng trạng thái: ...

* Kết bạn: ...

* Gửi tin nhắn: ...

### 3. Giải quyết bài toán

#### 3.1. Thiết kế giao diện

Sử dụng React để tận dụng khả năng tái sử dụng của các Component và sư đa dạng của các thư viện hỗ trợ như Bootstrap...vv

#### 3.2. Thiết kế cơ sở dữ liệu

todo


### 4. Triển khai phần mềm

#### 4.1 Xây dựng ứng dụng phía người dùng

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

#### 4.2 Xây dựng ứng dụng phía server 

to do


### 5. Kết quả

* Login 
....

![login](https://i.imgur.com/g0j65T7.png)

* Register
...
![dang ky](https://i.imgur.com/gVUnxWH.png)

* Home
....

![home](https://i.imgur.com/HcGzgLo.png)