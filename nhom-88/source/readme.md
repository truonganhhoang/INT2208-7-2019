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

Bài toán đặt ra là cần ứng dụng cho người dùng chia sẻ, kết nối với nhau thông qua các dòng trạng thái và nhắn tin trực tiếp.

#### 3.2. Thu thập yêu cầu

* Là một người dùng, tôi muốn tạo tài khoản riêng của mình để có thể sử dụng nó.
* Là một người dùng, tôi muốn tạo bài viết của mình để chia sẻ với người khác.
* Là một người dùng, tôi muốn thay đổi thông tin của mình để đáp ứng yêu cầu của mình.
* Là một người dùng, tôi muốn kết bạn với mọi người để tiện biết được họ đang hoạt động như thế nào.
* Là một người dùng, tôi muốn nhắn tin trực tiếp với bạn bè để có thể chia sẻ với họ về những điều đang diễn ra.
* Là một người dùng, khi tôi quên mật khẩu thì tôi có quền lấy lại mật khẩu qua email.



#### 3.3. Phân tích yêu cầu

Thiết kế ca sử dụng

#### 3.3.1. Đăng nhập:

 * Trạng thái: Người dùng chưa đăng nhập.
 * Mục đích: Đăng nhập vào trang web để có thể sử dụng được các chức năng của trang.
 * Luồng sự kiện:</br>

Người dùng vào phần đăng nhập.</br>
Sau khi ấn đăng nhập, thành công trả về giao diện trang chủ.</br>
Nếu không thành công, trả về màn hình ban đầu, hiện ra thông báo lỗi.</br>


#### 3.3.2. Đăng xuất:

Trạng thái: Người dùng đang trong phiên hoạt động.
Mực đích: Người dùng thoát khỏi phiên hoạt động, đăng xuất khỏi ứng dụng.
Luồng sự kiện:</br>
Người dùng chọn phần đăng xuất, màn hình trả về giao diện đăng nhập.</br>
Hệ thống kết thúc phiên hoạt động của người dùng đó.

#### 3.3.3. Đăng trạng thái:
* Trạng thái: Người dùng đang trong phiên hoạt động.
* Mục đích: Người dùng viết và tạo các dòng trạng thái ở trên giao diện trang chủ.
* Luồng sự kiện:</br>
Người dùng thao tác trên dòng trạng thái, khi ấn đăng bài thì hiển thị bài đăng trên trang chủ.</br>
Nếu bài đăng trống hoặc quá dài thì không cho phép đăng bài đăng.</br>
Hệ thống lưu lại sữ liệu của bài đăng thành công.

#### 3.3.4. Kết bạn: 
* Trạng thái: Người dùng đang trong phiên hoạt động, một người dùng khác không có trong danh sách bạn bè hiện tại.
* Mục đích: Người dùng kết bạn với người dùng khác để tiện theo dõi và trò chuyện.
* Luồng sự kiện:</br>
Tại trang cá nhân của người dùng khác, ấn vào kết bạn thì nút kết bạn đổi thành nút hủy kết bạn.</br>
Hệ thống lưu trữ dữ liệu về lời mời kết bạn của người dùng, gửi nó đến hồ sơ của người dùng được gửi lời mời đó.</br>
Nếu người dùng hủy yêu cầu kết bạn, hệ thóng xác nhận xóa danh sách người dùng đó khỏi danh sách bạn bè.

#### 3.3.5. Gửi tin nhắn:
* Trạng thái: Người dùng trong phiên hoạt động, người dùng khác đang là bạn bè của nhau.
* Mục đích: Nhắn tin với bạn bè để tán gẫu và chia sẻ một cách nhanh chóng nhất.
* Luồng sự kiện: 
Người dùng ấn vào ô tin nhắn sẽ hiện ra danh sách tin nhắn với người dùng khác.</br>
Người dùng ấn chọn sẽ hiện ra khung chat nhỏ.</br>
Người dùng nhập tin nhắn và gửi thành công, hệ thống lưu trữ và gửi tin nhắn đén dối phương.

### 4. Giải quyết bài toán

#### 4.1. Thiết kế giao diện

Sử dụng React để tận dụng khả năng tái sử dụng của các Component và sư đa dạng của các thư viện hỗ trợ như Bootstrap...vv

#### 4.2. Thiết kế cơ sở dữ liệu

* Lượng đồ User
```
User
|
|----------Id_
|            |------type: Object_id
|
|----------Email
|            |-----type: String
|            |-----unique: true
|            |-----required: true
|
|----------Password
|            |-----type: String
|            |-----required: true
|
|
|----------Permission
|            |-----type: String
|            |-----enum: ['Client', 'Manager', 'Admin']
|            |-----default: 'Clinet'
|
|-----------Media
|            |-------Avatar
|            |            |------type: String
|            |
|            |-------Image
|                        |------type: String
|
|-----------Tweet
|            |------reference: Tweet_id
```


```
Tweet
|
|----------Id_
|            |------type: Object_id
|
|----------Content
|            |-----type: String
|            |-----unique: true
|            |-----required: true
|
|----------Action
|            |------Like
|            |------Dislike

```




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
 |      |--------About.js
 |      |--------ForgotPassword
 |
 |------Reducers
 |      |--------loginReducer.js
 |      |--------registerReducer.js
 |      |--------index.js
 |
 |------saga
 |      |--------authenticationSaga.js
 |
 |------Login
 |      |--------login.js
 |
 |------Register
 |      |--------register.js
 |
 |------Stores
 |      |--------configureStore.js
 |
 |------App.js
 |
 |------index.js
```

* Component: là nơi chứa các component chung của ứng dụng

* Quan lý trạng thái: Action, Reducer, Store, saga: thư viện Redux quản lý trạng thái của toàn bộ ứng dụng

* Login, Register...: là các thư mục chưa các tính năng của ứng dụng


#### 5.2 Xây dựng ứng dụng phía server 


```
scr-----Config
 |      |------------db.js
 |      |------------index.js
 |
 |------server
 |      |--------controller
 |      |            |
 |      |            |-------api
 |      |            |      |-----login.js
 |      |            |      |-----register.js
 |      |
 |      |--------models
 |      |            |--------user.js
 |      |            |--------message.js
 |      |            |--------tweet.js
 |      |
 |      |--------index.js
 |
 |------index.js
 |
```

* Config: Nơi chứa các thông tin cấu hình của server, bao hồm thông tin cơ sở dữ liệu ...

* Server/controller: Xây dựng và quản lý các API của server

* Server/Model: Xây dựng các lượng đồ cho các đối tượng trong cơ sở dữ liệu

...



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

