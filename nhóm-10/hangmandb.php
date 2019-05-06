<?php
	$word;
	$topic;
	$explain;
	function word(){
	$host = 'localhost';
	$username = 'root';
	$password = '';
	$dbname = 'hangman';
	$con = mysqli_connect($host, $username, $password, $dbname);
	
	$ran=mt_rand(1, 314);
	$select = mysqli_query($con, "SELECT * FROM words WHERE id=".$ran);
	while ($row = mysqli_fetch_assoc($select)) {
		echo $row['word']."&&".$row['topic']."&&".explain($row['word']);

	}
}
	function topic($ran){
	$host = 'localhost';
	$username = 'root';
	$password = '';
	$dbname = 'hangman';
	$con = mysqli_connect($host, $username, $password, $dbname);
	
	// $ran=mt_rand(1, 314);
	$select = mysqli_query($con, "SELECT * FROM words WHERE word=".$ran);
	while ($row = mysqli_fetch_assoc($select)) {
		echo $row['topic'];
	}
	}
	function explain($s){
		$db = new PDO("sqlite:dictionaries.db");
           if(!$db){
              echo $db->lastErrorMsg();
            } 
           else
           {
           $sql = "SELECT * from tbl_edict where word = " . "'" . $s ."';";
           $ret = $db->query($sql);
           $t=0;
           while($row = $ret->fetch(\PDO::FETCH_ASSOC) ){
              return  $row['detail'];$t++;
           }
          if($t==0||$s=='')
            return "Sorry, we didn't find any word that match your search.";
           
           }
        }
?>

