<?php     
        if($_GET['wordEV']!=""||$_GET['wordVE']!=""||$_GET['wordVV']!="")   {  
        if ($_GET['dictionary'] == 'EV'){           
            if(isset($_GET['wordEV'])) $sword = $_GET['wordEV'];
            $handle = @fopen("./EV/anhviet109K.index", "r");
        }
        else if($_GET['dictionary'] == 'VE'){
            if (isset($_GET['wordVE']))  $sword = $_GET['wordVE'];
            $handle = @fopen("./VE/vietanh.index", "r");
        }
        else if($_GET['dictionary'] == 'VV'){
            if (isset($_GET['wordVV']))  $sword = $_GET['wordVV'];
            $handle = @fopen("./VV/vv30K.index", "r");
        }
        if ($handle) {
            while (!feof($handle)) {
            $buffer = fgets($handle, 100);
            $buffer = rtrim($buffer,"\r\n");
            $pos = strpos($buffer,"\t" );
            $word = substr($buffer,0,$pos );
            $data = substr($buffer,$pos+1 );
            $mang[] = $word;
        if ($word == $sword){
            $pos = strpos($data,"\t" );
            $data1 = substr($data,0,$pos ); // dia chi offset cua tu
            $data2 = substr($data,$pos+1); // do dai nghia cua tu
            break;
        }}
        }
        fclose($handle);     
        //ham chuyen tu co so 64 sang co so 10
        function GetDecimalValue($string){
            $base64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
            $decValue = 0;
            for ($i=0 ; $i<strlen($string) ; $i++)
            {
                $pos = strpos($base64, substr($string,$i,1 )) ;
                $decValue += pow(64,strlen($string)-$i-1)*$pos;
            }
            return $decValue;
        }
               
        /*echo GetDecimalValue($data1)."<br \> ";
        echo GetDecimalValue($data2)."<br \> ";
        */
        //Ham lay va in nghia ra tu CSDL
        function GetMeaning($offset,$length)
        {
            if ($_GET['dictionary'] == 'EV'){                                              
            $handle = @fopen("./EV/anhviet109K.dict", "r");
            }
            else if ($_GET['dictionary'] == 'VE'){
                $handle = @fopen("./VE/vietanh.dict", "r");
            }
            else $handle = @fopen("./VV/vv30K.dict", "r");
            if ($handle) {
                $meaning = stream_get_contents($handle, $length, $offset);
                if ($meaning) echo nl2br($meaning);
                else
                echo " Not Found !!!";
                fclose($handle);
            }
            else
            echo "ERRO - FILE!";
        }
        if(isset($data1))
            GetMeaning(GetDecimalValue($data1),GetDecimalValue ($data2));
        else
            echo "Not Found !!!";
    }
    ?>