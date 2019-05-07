<?php
//fetch.php
 $dbc = new PDO("sqlite:dictionaries.db");
if(!$dbc){
  echo $dbc->lastErrorMsg();
} 
$keyword= $_POST["query"];
$query = "select word from tbl_edict where word like '$keyword%' ";
	
$ret = $dbc->query($query);
$data = array();
while($row = $ret->fetch(\PDO::FETCH_ASSOC) ){ 
	$data[] = $row["word"]; 
}
echo json_encode($data);

?>