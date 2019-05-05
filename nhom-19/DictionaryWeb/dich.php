<?php 
require_once ('TransAPI/vendor/autoload.php');
use \Statickidz\GoogleTranslate;
$source = $_GET['source'];
$target = $_GET['target'];
$word = $_GET['word'];
$trans = new GoogleTranslate();
$result = $trans->translate($source, $target, $word);
echo $result;
?>
