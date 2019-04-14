<!DOCTYPE html>
<html>
<?php
 include ('hangmandb.php');
?>
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
  <link rel="stylesheet" type="text/css" href="Hangman.css">
  <link rel="shortcut icon" type="image/ico" href="imgg/avv.ico"/>
</head>

<body class="w-100">
  <div id="fb-root"></div>
  <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2&appId=296191771278805&autoLogAppEvents=1"></script>
  <nav class="navbar navbar-expand-md navbar-dark bg-primary">
    <div class="container justify-content-center"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar15">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar15">
        <ul class="navbar-nav">
          <li class="nav-item mx-2"> <a class="nav-link" href="lythuyet1.php">Grammar</a> </li>
          <li class="nav-item mx-2 "> <a class="nav-link" href="Hangman.php" style="color: white;">HangMan Game</a> </li>
          <li class="nav-item mx-2"> <a class="nav-link navbar-brand mr-0 " href="homemoi.php"><i class="fa d-inline fa-lg fa-stop-circle-o"></i>
              <b>UDict</b></a> </li>
          <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle " href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Explore</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"> <a class="dropdown-item " href="index.php">Translate</a><a class="dropdown-item" href="#">Speech</a></div>
          </li>
          <li class="nav-item"><a class="nav-link " href="About.php">About us</a></li>
        </ul>
      </div>
    </div>
  </nav>
<!-- <script language="javascript" src="Hangman.js"></script> -->
  <div class="row">
    <div class="col-sm-1">
    </div>
    <div class="col-sm-5" style="background-color: lightblue;">
   <h3>Hangman</h3>
    <p>Use the alphabet below to guess the word. </p>
    <div id="buttons">
    </div>  
  </div>
  <div class="col-sm-5" style="background-color: lightblue;">
    <p style="font-size: 30px;">Topic: </p><h5 id="catagoryName" style="font-size: 30px;"></h5>

    <div id="hold">
    </div>
    <p id="mylives"></p>
  
     <canvas id="stickman">This Text will show if the Browser does NOT support HTML5 Canvas tag</canvas>
    <div class="container">
      <button id="expl" hidden="off" style="font-size: 30px;padding: 4px;">Get explain</button>
      <button id="reset">Play again</button>
 </div>
  </div>
  </div>
<div class="col-sm-1">
  </div>

  </div>
  <div class="row">
    <div class="col-sm-1"></div>
     <div class="col-sm-10"><div id="viet" style="color: black;text-align: left;background-color: #A0E7D6;padding: 10px;outline: 15px solid  #A0E7D6;margin-top: 15px;">
    </div></div>
      <div class="col-sm-1"></div>
  </div>
     
     <div class="fb-comments" data-href="http://localhost/Hangman.php" data-width="900px" data-numposts="5"></div> 
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
<script type="text/javascript">
  function randomInteger(a, b) {
    return Math.floor(Math.random() * (a - b + 1)) + a;
}
  
window.onload = function () {

  var alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
        'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's',
        't', 'u', 'v', 'w', 'x', 'y', 'z'];
  
    var categories;         // Array of topics
  var chosenCategory;
  var getHint ;          // Word getHint
  var word ;              // Selected word
  var guess ;             // Geuss
  var geusses = [ ];      // Stored geusses
  var lives ;             // Lives
  var counter ;           // Count correct geusses
  var space;        
    var a = "<?php word()?>";
  // Play
   var b=a.split("&&");
   var word=b[0];
   var detail=b[2];
   var topic=b[1];      // Number of spaces in word '-'

  // Get elements
  var showLives = document.getElementById("mylives");
 var showCatagory = document.getElementById("scatagory");
var exl=document.getElementById("expl");
var viet=document.getElementById("viet");
 

  // create alphabet ul
  var buttons = function () {
    myButtons = document.getElementById('buttons');
    letters = document.createElement('ul');

    for (var i = 0; i < alphabet.length; i++) {
      letters.id = 'alphabet';
      list = document.createElement('li');
      list.id = 'letter';
      list.innerHTML = alphabet[i];
      check();
      myButtons.appendChild(letters);
      letters.appendChild(list);
    }
  }
  // Create geusses ul
   result = function () {
    wordHolder = document.getElementById('hold');
    correct = document.createElement('ul');

    for (var i = 0; i < word.length; i++) {
      correct.setAttribute('id', 'my-word');
      guess = document.createElement('li');
      guess.setAttribute('class', 'guess');
      if (word[i] === "-") {
        guess.innerHTML = "-";
        space = 1;
      } else {
        guess.innerHTML = "_";
      }

      geusses.push(guess);
      wordHolder.appendChild(correct);
      correct.appendChild(guess);
    }
  }
  // Show lives
   var selectCat = function () {
    
      catagoryName.innerHTML = topic+"" ;
  }
   comments = function () {
    showLives.innerHTML = "You have " + lives + " lives";
    if (lives < 1) {
      showLives.innerHTML = "Game Over<br />"+b[0];
     exl.hidden=false;
    
    }
    for (var i = 0; i < geusses.length; i++) {
      if (counter + space === geusses.length) {
        showLives.innerHTML = "You Win!";
        exl.hidden=false;
      }
    }
  }

      // Animate man
  var animate = function () {
    var drawMe = lives ;
    drawArray[drawMe]();
  }

  
   // Hangman
  canvas =  function(){

    myStickman = document.getElementById("stickman");
    context = myStickman.getContext('2d');
    context.beginPath();
    context.strokeStyle = "#fff";
    context.lineWidth = 2;
  };
  
    head = function(){
      myStickman = document.getElementById("stickman");
      context = myStickman.getContext('2d');
      context.beginPath();
      context.arc(60, 25, 10, 0, Math.PI*2, true);
      context.stroke();
    }
    
  draw = function($pathFromx, $pathFromy, $pathTox, $pathToy) {
    
    context.moveTo($pathFromx, $pathFromy);
    context.lineTo($pathTox, $pathToy);
    context.stroke(); 
}

   frame1 = function() {
     draw (0, 150, 150, 150);
   };
   
   frame2 = function() {
     draw (10, 0, 10, 600);
   };
  
   frame3 = function() {
     draw (0, 5, 70, 5);
   };
  
   frame4 = function() {
     draw (60, 5, 60, 15);
   };
  
   torso = function() {
     draw (60, 36, 60, 70);
   };
  
   rightArm = function() {
     draw (60, 46, 100, 50);
   };
  
   leftArm = function() {
     draw (60, 46, 20, 50);
   };
  
   rightLeg = function() {
     draw (60, 70, 100, 100);
   };
  
   leftLeg = function() {
     draw (60, 70, 20, 100);
   };
  
  drawArray = [rightLeg, leftLeg, rightArm, leftArm,  torso,  head, frame4, frame3, frame2, frame1]; 

  // OnClick Function
   check = function () {
    list.onclick = function () {
      var geuss = (this.innerHTML);
      this.setAttribute("class", "active");
      this.onclick = null;
      for (var i = 0; i < word.length; i++) {
        if (word[i] === geuss) {
          geusses[i].innerHTML = geuss;
          counter += 1;
        } 
      }
      var j = (word.indexOf(geuss));
      if (j === -1) {
        lives -= 1;
        comments();
        animate();
      } else {
        comments();
      }
    }
  }
   
  play = function () {
    console.log(word);
    buttons();

    geusses = [ ];
    lives = 10;
    counter = 0;
    space = 0;
    result();
    comments();
    console.log(detail);
    selectCat();
   canvas();
  }

  play();
     document.getElementById('expl').onclick = function() {
       viet.innerHTML=detail+"";
}
   // Reset

  document.getElementById('reset').onclick = function() {
    correct.parentNode.removeChild(correct);
    letters.parentNode.removeChild(letters);
     a = "<?php word()?>";
     b=a.split("&&");
     word=b[0];
     topic=b[1];
     detail=b[2];
    context.clearRect(0, 0, 400, 400);
    viet.innerHTML="";
    play();
  }
}
</script>
</html>