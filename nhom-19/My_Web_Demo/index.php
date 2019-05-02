<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Tra cứu từ điển</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="img/globe-2x.png">
        <link rel="stylesheet" href="CSS/styles.css">           
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>   
        <script language="javascript">
               function load_ajax()
                {
                    $.ajax({
                        url : "./actions.php", 
                        type : "get",  
                        dateType:"text", 
                        data : { 
                            wordEV :     $('#wordEV').val(),
                            wordVE :     $('#wordVE').val(),
                            wordVV :     $('#wordVV').val(),
                            wordVF :     $('#wordVF').val(),
                            wordFV :     $('#wordFV').val(),
                            dictionary : $('#dictionary').val()
                        },
                        success : function (result){
                            $('#result').html(result);
                        }
                    });
                } 
        </script>    
    </head>
<body >
<!-- Begin: HEADER -->
<nav class="navbar navbar-expand-lg bg-dark navbar-dark nav-justified nav-pills" role="navigation">
<a class="navbar-brand" href="./index.php">Dictionary</a>
<i class="fa fa-circle-o-notch fa-spin navbar-brand" style="font-size:20px;color:white"></i>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav mr-auto nav-pills">
        <li class="nav-item ">
            <a class="nav-link active" href="./index.php">Tra từ online <span class="sr-only"></span></a>
        </li>    
    </ul>
    <ul class="navbar-nav nav-pills">
        <li class="nav-item">
            <a class="nav-link disabled" href="./translate.php">Dịch đoạn văn</a>
        </li>
    </ul>
</div>
</nav>
<!-- END HEADER -->
<!-- BODY -->
<div class="container">
    <div align="center">
        <div style="margin-top:10%"><img src="img/logo.png" alt="Forest"></div>
        <div class="input-group" id="input" style="margin-top:5%">                            
            <input style="color: #DF7401;width:100% " type = "text" id = "wordEV" class="input_box"  placeholder="Nhập từ cần tra" required/> 
            <input style="color: #DF7401;width:100% " type = "text" id = "wordVE" class="input_box hidden"  placeholder="Nhập từ cần tra" required/> 
            <input style="color: #DF7401;width:100% " type = "text" id = "wordVV" class="input_box hidden"   placeholder="Nhập từ cần tra" required/>
            <input style="color: #DF7401;width:100% " type = "text" id = "wordVF" class="input_box hidden"  placeholder="Nhập từ cần tra" required/>
            <input style="color: #DF7401;width:100%" type = "text" id = "wordFV" class="input_box hidden"  placeholder="Nhập từ cần tra" required/>       
                <select id = "dictionary" name = "dictionary"  >
                    <option value="EV" >Anh-Việt</option>
                    <option value="VE" >Việt-Anh</option>
                    <option value="VV" >Việt-Việt</option>
                    <option value="VF" >Việt-Pháp</option>
                    <option value="FV" >Pháp-Việt</option>
                </select>                                      
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="search">Search</button>                    
        </div>                                  
    </div>
    <!-- print result -->
    <div style="margin-top:1.5cm;background-color:powderblue" id="result">            
        <p id="result"></p>
    </div>        
</div>                  
     <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>            
<script>
            $("#dictionary").change(function (){
                var type = $(this).val();
                $(".input_box:not(.hidden)").addClass("hidden");
                $("#word"+type).removeClass("hidden");
            });
            $.getJSON("./json/EV.json", function(tags1) {
                $( "#wordEV" ).autocomplete({
                    delay: 100,
                    source: function( request, response ) {
                        var matcher = new RegExp( "^" + $.ui.autocomplete.escapeRegex( request.term ), "i" );
                        response( $.grep( tags1, function( item ){
                            return matcher.exec( item );
                        }) );                                               
                    }                   
                });
            });
            $.getJSON("./json/VE.json", function(tags2) {
                    $( "#wordVE" ).autocomplete({
                        delay: 100,
                        source: function( request, response ) {
                            var matcher = new RegExp( "^" + $.ui.autocomplete.escapeRegex( request.term ), "i" );
                            response( $.grep( tags2, function( item ){
                                return matcher.exec( item );
                            }) );                                               
                        }                    
                    });
                });
            $.getJSON("./json/VV.json", function(tags3) {
                $( "#wordVV" ).autocomplete({
                    delay: 100,
                    source: function( request, response ) {
                        var matcher = new RegExp( "^" + $.ui.autocomplete.escapeRegex( request.term ), "i" );
                        response( $.grep( tags3, function( item ){
                            return matcher.exec( item );
                        }) );                                               
                    }                    
                });
            });        
            $.getJSON("./json/VF.json", function(tags4) {
                $( "#wordVF" ).autocomplete({
                    delay: 100,
                    source: function( request, response ) {
                        var matcher = new RegExp( "^" + $.ui.autocomplete.escapeRegex( request.term ), "i" );
                        response( $.grep( tags4, function( item ){
                            return matcher.exec( item );
                        }) );                                               
                    }                    
                });
            });
            $.getJSON("./json/FV.json", function(tags5) {
                $( "#wordFV" ).autocomplete({
                    delay: 100,
                    source: function( request, response ) {
                        var matcher = new RegExp( "^" + $.ui.autocomplete.escapeRegex( request.term ), "i" );
                        response( $.grep( tags5, function( item ){
                            return matcher.exec( item );
                        }) );                                               
                    }                    
                });
            });

            $('.input_box').keypress(function(e){
            var p = e.which;
            if(p==13){
                    load_ajax();
                };
            });

            $('#search').click(function (){
                $('.loading').html(' <img src="img/ajax-loader.gif" ');
                load_ajax();
            });

            $("#dictionary").change();
            // When the user scrolls down 20px from the top of the document, show the button
            window.onscroll = function() {scrollFunction()};

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    document.getElementById("myBtn").style.display = "block";
                } else {
                    document.getElementById("myBtn").style.display = "none";
                }
            }

            // When the user clicks on the button, scroll to the top of the document
            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
</script>    
    <!-- END BODY -->
    <!--FOOTER-->
    <footer class="container-fluid text-center starter-template" style="margin-top:50px">
        <p style="color: #084B8A"><b>Contact Me</b></p>       
        <a href="https://www.facebook.com/hung.tr.522" class="fa fa-facebook-square fa-3x" title="Liên kết tới Facebook tác giả" target="_blank"></a>
        <a href="https://plus.google.com/u/0/112179101004715606073" class="fa fa-google-plus fa-3x" title="Liên kết tới Google+ tác giả" target="_blank"></a>
        <a href="https://github.com/hungtrn75" class="fa fa-github fa-3x" title="Mã nguồn ứng dụng" target="_blank"></a>
        <a href="https://www.linkedin.com/in/h%C3%B9ng-tr-574093141/" title="Liên kết tới Linkedin tác giả" class="fa fa-linkedin-square fa-3x" target="_blank"></a>
        <p><span style="color: #084B8A">Copyright &copy; <a href="./index.php">hungtrn75 2017</a></span></p>
    </footer>
    <!--END FOOTER-->
</body>  
</html>