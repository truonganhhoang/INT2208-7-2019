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


3. Tạo một app trên heroku
	
		$ heroku create oderonline

	
4. Chuyển thư thư mục project thành thư mục .git
	Tạo thư mục git để deploy lên heroku

		$ git init 
		
		$ git add .
		
		$ git commit -m "First commit"
		
		$ git push heroku master

	
5. Cấu hình và cài đặt key
	Tạo key ngẫu nhiên bởi php
	
		$ php artisan key:generate --show
	
	Rồi sau đó cấu hình key cho app trên heroku.
	
		$ heroku config:set APP_KEY=<key_vừa_tạo>
		

6. Cài đặt buildpacks cho heroku thành php
	
		$ heroku buildpacks:set heroku/php

	
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
		
		
#### SỬA LỖI 404 NOT FOUND NGINX
1. Tạo một file nginx_app.conf với nội dung như sau:	
		
		location / {
			# try to serve file directly, fallback to rewrite
			try_files $uri @rewriteapp;
		}

		location @rewriteapp {
			# rewrite all to app.php
			rewrite ^(.*)$ /index.php/$1 last;
		}
		location ~ ^/(app|app_dev|config)\.php(/|$) {
			try_files @heroku-fcgi @heroku-fcgi;
			internal;
		}
		
2. Sửa Procfile lại với nội dung như sau: 
	
		$ echo web: vendor/bin/heroku-php-nginx -C nginx_app.conf /public > Procfile
		
		
#### ĐIỀU HƯỚNG TRANG WEB DƯỚI DẠNG HTTPS ĐỂ DÙNG CHỨC NĂNG ĐĂNG NHẬP BẰNG FACEBOOK
1. Đi tới public/.httaccess thêm vào nội dung như sau:
		
		##Force SSL 

		#Normal way (in case you need to deploy to NON-heroku)
		RewriteCond %{HTTPS} !=on

		#Heroku way
		RewriteCond %{HTTP:X-Forwarded-Proto} !https 

		#If neither above conditions are met, redirect to https
		RewriteRule ^ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
		

2. Kiểm tra lại xem trang web đã tự động điều hướng chưa
		
		$ heroku open
		
	Lỗi phát sinh: Khi hiển thị trang web dưới dạng https thì một số hình ảnh hiển thị bị lỗi do chưa cập nhật đường dẫn https


3. Sửa lỗi hiển thị hình ảnh
	
	Đi tới app/Providers/AppServiceProvider thêm vào hàm boot:
	
		URL::forceScheme('https');
			
		if (isset($_SERVER['HTTPS']) && ($_SERVER['HTTPS'] == 'on' || $_SERVER['HTTPS'] == 1) || isset($_SERVER['HTTP_X_FORWARDED_PROTO']) &&  $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https') {
             \URL::forceScheme('https');
        }


	 
		
**Tham khảo tại:** https://medium.com/@Oriechinedu/how-to-host-a-laravel-app-with-mysql-database-on-heroku-ab56b08be735
