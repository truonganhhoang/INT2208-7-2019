## HƯỚNG DẪN DEPLOY LARAVEL PROJECT BẰNG heroku ##

Đầu tiên cần có một tài khoản trên https://www.heroku.com/.
Sau đó tải CLI của heroku về máy tính

#### TẠO APP TRÊN HEROKU


1. Đăng nhập vào heroku trên command line
	Đầu tiên mở command line lên rồi cd tới thư mục project laravel nha.
	Gõ lệnh này sau khi các bạn ở thư mục laravel project.
	
		$ heroku login
	
	Sau đó hệ thống sẽ tự động mở trình duyệt để login vào heroku.

	
2. Tạo một file có tên là Procfile
	Gõ vào command line như sau:
	
		$ echo web: vendor/bin/heroku-php-apache2 public/ > Procfile
	
	Kiểm tra lại trong project sẽ có một file Procfile có nội dung như sau
	
		web: vendor/bin/heroku-php-apache2 public/
	
	
3. Chuyển thư thư mục project thành thư mục .git
	Tạo thư mục git để deploy lên heroku

		$ git init 
		
		$ git add .
		
		$ git commit -m "First commit"
		
		$ git push heroku master

	
4. Tạo một app trên heroku
	
		$ heroku create oderonline
	
	
5. Cài đặt buildpacks cho heroku thành php
	
		$ heroku buildpacks:set heroku/php

	
6. Cấu hình và cài đặt key
	Tạo key ngẫu nhiên bởi php
	
		$ php artisan key:generate --show
	
	Rồi sau đó cấu hình key cho app trên heroku.
	
		$ heroku config:set APP_KEY=<key_vừa_tạo>

	
7. Chạy thử app
	
	$ heroku open
	

#### THÊM MYSQL DATABASE CHO APP
Sử dụng một trang lưu cơ sở dữ liệu online là db4free.net


8. Tạo tài khoản db4free
	

9. Cấu hình lại database tới phpMyAdmin của db4free
Đi tới config/database.php trong project và sửa đoạn sau:
	
	
		'mysql' => [
            'driver' => 'mysql',
            'host' => env('DB_HOST', 'db4free.net'),
            'port' => env('DB_PORT', '3306'),
            'database' => env('DB_DATABASE', 'your_database_name from_db4free'),
            'username' => env('DB_USERNAME', 'your_db4free_username'),
            'password' => env('DB_PASSWORD', 'your_db4free_password'),
            'unix_socket' => env('DB_SOCKET', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix' => '',
            'strict' => true,
            'engine' => null,
        ],

		
	Commit lại file đã chỉnh sửa
	
		$ git add .
	
		$ git commit -m "Update database sever"
		
		$ git push heroku master


10. Thêm cơ sở dữ liệu
	
		$ heroku run php artisan migrate

	Chạy thử lại app
	
		$ heroku open
	 
		
**Tham khảo tại:** https://medium.com/@Oriechinedu/how-to-host-a-laravel-app-with-mysql-database-on-heroku-ab56b08be735
