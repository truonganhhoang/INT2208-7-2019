<?php
function displayuser(){
	include ('dbconn.php');
	$select = mysqli_query($con, "SELECT username,point FROM users ORDER BY username");
	echo "<table class='table' style='width:800px;'>";
	echo "<tr style='background-color:#83DFCE;' ><th width='40%' style='padding:10px;text-align: center; '>Name</th><th width='40%' style='padding:10px;text-align: center; '>Score</th><th width='20%' style='padding:10px;text-align: center; ' >Delete</th></tr>";
			
	while ($row = mysqli_fetch_assoc($select)) {
		
		echo "<tr  ><form action='deleteuser.php' method='POST'><td style='padding:5px;'><input name='user' type='text' style='text-align: center;' value='".$row['username']."' readonly='on'></input></td><td style='padding:5px;' ><input name='point' style='text-align: center;'  type='text' value='".$row['point']."' readonly='on'></input></td><td><form action='deleteuser.php' method='POST'><input type='submit' style='display:block;background-color:#83DFCE;color:background-color:#83DFCE;;padding:3px;border-radius: 10px;' value='Delete'></input></form></td></tr>";
	}
	echo "</table>";
}
function displaytopic(){
	include ('dbconn.php');
	$select = mysqli_query($con, "SELECT * FROM topics ORDER BY date_posted DESC");
	echo "<table class='table'  width='100%'> ";
	echo "<tr style='background-color:#83DFCE;' >
	<th width='20%' style='padding:10px;text-align: center; '>Title</th>
	<th width='20%' style='padding:10px;text-align: center; '>Author</th>
	<th width='20%' style='padding:10px;text-align: center; ' >Date posted</th>
	<th width='10%' style='padding:10px;text-align: center; '>Views</th>
	<th width='10%' style='padding:10px;text-align: center; '>Replies</th>
	<th width='20%' style='padding:10px;text-align: center;'>Delete</th></tr>";
			
	while ($row = mysqli_fetch_assoc($select)) {
		
		echo "<tr  >
		<td style='padding:3px;text-align: center; '>".$row['title']."</td>
		<td  style='padding:3px;text-align: center; '>".$row['author']."</td>
		<td style='padding:3px;text-align: center; '>".$row['date_posted']."'</td>
		<td style='padding:3px;text-align: center; '>".$row['views']."</td>
		<td style='padding:3px;text-align: center; '>".$row['replies']."</td>
		<td>
		<form action='deletetopicbyadmin.php' method='POST'>
		<input name='id' type='text' style='text-align: center;' value='".$row['topic_id']."' readonly='on' hidden='on'></input>
		<input type='submit' style='display:block;background-color:#83DFCE;color:background-color:#83DFCE;;padding:2px;border-radius: 10px;' value='Delete' ></input></form></td>
		</tr>";
	}
	echo "</table>";
}
	function displaycomment(){
	include ('dbconn.php');
	$select = mysqli_query($con, "SELECT  topics.title,replies.author,comment,replies.date_posted,reply_id FROM replies,topics WHERE replies.topic_id=topics.topic_id ORDER BY replies.date_posted DESC ");
	echo "<table class='table'  width='100%'> ";
	echo "<tr style='background-color:#83DFCE;' >
	<th width='20%' style='padding:10px;text-align: center; '>Topic</th>
	<th width='20%' style='padding:10px;text-align: center; '>Author</th>
	<th width='20%' style='padding:10px;text-align: center; ' >Comment</th>
	<th width='20%' style='padding:10px;text-align: center; '>Date posted</th>
	<th width='20%' style='padding:10px;text-align: center;'>Delete</th></tr>";
			
	while ($row = mysqli_fetch_assoc($select)) {
		
		echo "<tr  >
		<td style='padding:3px;text-align: center; '>".$row['title']."</td>
		<td  style='padding:3px;text-align: center; '>".$row['author']."</td>
		<td style='padding:3px;text-align: center; '>".$row['date_posted']."'</td>
		<td style='padding:3px;text-align: center; '>".$row['comment']."</td>
		<td>
		<form action='deletecomment.php' method='POST'>
		<input name='id' type='text' style='text-align: center;' value='".$row['reply_id']."' readonly='on' hidden='on'></input>
		<input type='submit' style='display:block;background-color:#83DFCE;color:background-color:#83DFCE;;padding:2px;border-radius: 10px;' value='Delete' ></input></form></td>
		</tr>";
	}
	echo "</table>";
}

?>