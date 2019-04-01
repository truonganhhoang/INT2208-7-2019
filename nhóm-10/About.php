<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>UDict</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">

  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script>
  <link rel="stylesheet" href="cssmoi.css" type="text/css">
  <link rel="stylesheet" href="theme.css" type="text/css">
  <link rel="shortcut icon" type="image/ico" href="imgg/avv.ico"/>
</head>

<body class="w-100">
  <nav class="navbar navbar-expand-md navbar-dark bg-primary">
    <div class="container justify-content-center"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar15">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar15">
        <ul class="navbar-nav">
          <li class="nav-item mx-2"> <a class="nav-link" href="lythuyet1.php">Grammar</a> </li>
          <li class="nav-item mx-2"> <a class="nav-link" href="Hangman.php">HangMan Game</a> </li>
          <li class="nav-item mx-2"> <a class="nav-link navbar-brand mr-0 " href="homemoi.php"><i class="fa d-inline fa-lg fa-stop-circle-o"></i>
              <b>UDict</b></a> </li>
          <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Explore</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"> <a class="dropdown-item " href="index.php">Translate</a><a class="dropdown-item" href="#">Speech</a></div>
          </li>
          <li class="nav-item"><a class="nav-link active" href="About.php">About us</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="py-2 text-center" id="header">
        <div class="mx-auto">
          <h1 class="w-100" > UDict</h1>
          <h5 >This is my dictionary</h5>
          <form class="form-inline d-flex justify-content-center" action="homemoi.php" method="post">
            <div class="input-group input-group-sm" > 
              <input type="text" class="form-control form-control-lg" name="key" value="<?php 
            if(isset($_POST['key']))
          echo $_POST['key'];
          ?>" id="form3" placeholder="Type and search..." autocomplete="off">
              <div class="input-group-append"  id="submit"><button class="btn btn-block btn-outline-primary " type="submit" ><i class="fa fa-search fa-fw"></i>
                  <font face="FontAwesome">Search</font>
                </button></div>
            </div>
          </form>
        </div>
      </div>
      <div style="padding: 30px;background-color: #F4E5D9;">
          <b><h1 style="text-align: center;">UDict</h1></b>
          <h5><p class="mb-3" style="text-align: center;">Miễn phí. Tiện lợi. Hiệu quả.</p></h5>
          <p>
          Bạn muốn học từ vựng, ngữ pháp Tiếng Anh nhưng không biết bắt đầu từ đâu? Bạn muốn tự kiểm tra và củng cố lại từ vựng một cách hiệu quả và thú vị?
          <br>Với UDict, bạn có thể!
          <br>Từ
          <a href="homemoi.php">tra từ điển</a>
          đến
          <a href="lythuyet1.php">học ngữ pháp Tiếng Anh</a>
          , và thậm chí 
          <a href="#">kiểm tra từ vựng.</a>
          <br>
          <h3 style="text-align: center;"><a href="homemoi.php">Cùng học Tiếng Anh với UDict!</a></h3>
          <br>
        </p>
    </div>
  <div class="">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="carousel slide" data-ride="carousel" id="carousel" style="color: black;">
            <div class="carousel-inner">
              <div class="carousel-item"> <img class="d-block img-fluid w-100 h-75" src="imgg/bbc.png" style="opacity: 0.25;">
                <div class="carousel-caption" style="color: black;">
                  <h5 class="m-0">BBC Learning English</h5>
                  <p > 
                    Đây là 1 mục nhỏ học tiếng Anh của trang báo điện tử của Anh BBC. Trang BBC Leaning English còn có thể đổi giao diện ngôn ngữ sang tiếng Việt giúp bạn nắm rõ thông tin các phần hơn. Trong BBC đã chia ra 11 chuyên mục nhỏ cũng như từng bài theo các trình độ khác nhau. Ngoài 11 chuyên mục theo trình độ, bạn cũng có thể lựa chọn học theo các chủ đề áp dụng theo từng môi trường giao tiếp mà mình thường dùng như: English at university là loạt video phim hoạt hình trong đó bạn học được các cụm từ tiếng Anh thông dụng hàng ngày trong  trường học, phù hợp dành cho các bạn đang chuẩn bị du học nước ngoài. Tiếng Anh trong công việc với English at work, hay News report, The English We Speak, Lingohack, 6 minute english, Pronunciation, Drama, Words in the news…</p>
                </div>
              </div>
              <div class="carousel-item"> <img class="d-block img-fluid w-100 h-75" src="imgg/Duolingo.png">
                <div class="carousel-caption" style="color: black;">
                  <h5 class="m-0">Duolingo</h5>
                  <p>Một nền tảng (platform) học ngôn ngữ miễn phí và dịch văn bản dựa trên "crowdsourcing" (mã nguồn đóng góp từ cộng đồng).Duolingo cung cấp các bài học viết và chính tả mang tính bao quát, với phần luyện nói cho những người sử dụng ở trình độ cao hơn. Chương trình học bao gồm một cây kĩ năng được trò chơi hóa mà người dùng có thể từng bước vượt qua và phần từ vựng nơi bạn có thể luyện các từ mà mình đã học</p>
                </div>
              </div>
              <div class="carousel-item active"> <img class="d-block img-fluid w-100 h-75" src="imgg/lyricstraining.png" style="opacity: 0.25;">
                <div class="carousel-caption" style="color: black; ">
                  <h5 class="m-0">Lyrics Training</h5>
                  <p>Nếu bạn là một fan của nhạc US/UK và thích việc học tiếng Anh qua các bài hát thì đây là một trang mạng tuyệt vời cho bạn.
                  Chỉ cần lựa chọn bài hát, cấp độ và bắt đầu phát nhạc thôi. Bạn sẽ phải điền vào những từ còn thiết, tùy theo cấp độ mà bạn lựa chọn thì máy tính sẽ che bớt 10%, 25%, 50% hoặc 100% những từ trong câu hát.
                  Trang web này sẽ rất hiệu quả cho các bạn muốn luyện kĩ năng nghe. Máy sẽ không cho phép bạn bỏ qua mà phải hoàn thành một câu thì mới được sang câu tiếp theo.
                  Bạn nên luyện thường xuyên, ít nhất 5 bài hát mỗi tuần, và khả năng nghe của bạn sẽ tiến bộ rất nhiều!</p>
                </div>
              </div>
            </div> <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev"> <span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span> </a> <a class="carousel-control-next" href="#carousel" role="button" data-slide="next"> <span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span> </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center text-white" style="background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), url(https://img3.akspic.com/image/39450-nature-star-snow-milky_way-earth-1920x1080.jpg?attachment=1); background-position: center center, center center; background-size: cover, cover; background-repeat: repeat, repeat;">
    <div class="container">
      <div class="row">
        <div class="mx-auto col-md-12">
          <h1 class="mb-3">Our team</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 p-4 col-lg-3"><a href="https://www.facebook.com/xc.hhh.1207" target="_blank" rel="noopening" > <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="imgg/ha.jpg" alt="Card image cap" width="200"></a>
          <h5> <b class="">D. T. Hà</b></h5>
          <p class="mb-0">Product owner</p>
        </div>
        <div class="col-md-3 p-4 col-lg-3"> <a href="https://www.facebook.com/van.dang.yeuuu" target="_blank" rel="noopening"><img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="imgg/van.jpg" alt="Card image cap" width="200"></a>
          <h5><b>N. T. Vân Anh</b></h5>
          <p class="mb-0">Dev team</p>
        </div>
        <div class="p-4 col-lg-3"><a href="https://www.facebook.com/ahmin.park.16" target="_blank" rel="noopening"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="imgg/manh.jpg" width="200"></a>
          <h5><b>Đ. Minh Anh</b></h5>
          <p class="mb-0">Scrum Master</p>
        </div>
        <div class="col-lg-3 p-4"><a href="https://www.facebook.com/anhmname" target="_blank" rel="noopening"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="imgg/na.png" width="200"></a>
          <h5> <b>B. K. Ngọc Anh</b></h5>
          <p class="mb-0">Dev team</p>
        </div>
      </div>
    </div>
  </div>
  
   
    <div class="py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center d-md-flex align-items-center"> <i class="d-block fa fa-stop-circle fa-2x mr-md-5 text-primary"></i>
            <ul class="nav mx-md-auto d-flex justify-content-center">
              <li class="nav-item"> <a class="nav-link active" href="homemoi.php">Home</a> </li>
              <li class="nav-item"> <a class="nav-link" href="lythuyet1.php">Grammar</a> </li>
              <li class="nav-item"> <a class="nav-link" href="Hangman.php">HangMan</a> </li>
              <li class="nav-item"> <a class="nav-link" href="About.php">About</a> </li>
            </ul>
            <div class="row">
              <div class="col-md-12 d-flex align-items-center justify-content-md-between justify-content-center my-2"> <a href="#">
                  <i class="d-block fa fa-facebook-official text-muted fa-lg mx-2"></i>
                </a> <a href="#">
                  <i class="d-block fa fa-instagram text-muted fa-lg mx-2"></i>
                </a> <a href="#">
                  <i class="d-block fa fa-twitter text-muted fa-lg ml-2"></i>
                </a> </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p class="mt-2 mb-0">© 3-2019 UDict. All rights reserved</p>
          </div>
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </div>
</body>

</html>