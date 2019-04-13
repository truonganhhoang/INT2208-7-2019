<?php
	function dispcategories() {
		include ('dbconn.php');
		
		$select = mysqli_query($con, "SELECT * FROM categories");
		echo "<div class='row'> <div class='col-sm-9'>";
		while ($row = mysqli_fetch_assoc($select)) {
			echo "<table class='category-table' >";
			echo "<tr style='background-color:#83DFCE;' ><td class='main-category' colspan='2' style='padding:10px;' >".$row['category_title']."</td></tr>";
			dispsubcategories($row['cat_id']);
			echo "</table>";
		}
		echo "</div>";
		disrank();
		
	}
	function disrank(){
		include ('dbconn.php');
		$select = mysqli_query($con, "SELECT username,point FROM users
									  ORDER BY point DESC LIMIT 10");
		echo "<div class='col-sm-2' ><table class='rank'>";
		echo "<tr style='background-color:#83DFCE;' ><th width='50%' style='padding:10px;'>Name</th><th width='50%' style='padding:10px;'>Score</th></tr>";
			
		while ($row = mysqli_fetch_assoc($select)) {
			
			echo "<tr  ><td style='padding:5px;'>".$row['username']."</td><td style='padding:5px;' >".$row['point']."</td></tr>";
		}
		echo "</table></div></div>";
	}
	function dispsubcategories($parent_id) {
		include ('dbconn.php');
		$select = mysqli_query($con, "SELECT cat_id, subcat_id, subcategory_title, subcategory_desc FROM categories, subcategories 
									  WHERE ($parent_id = categories.cat_id) AND ($parent_id = subcategories.parent_id)");
		echo "<tr><th width='90%' ></th><th width='10%'>Topics</th></tr>";
		while ($row = mysqli_fetch_assoc($select)) {
			echo "<tr><td class='category_title' style='padding:10px;'><a href='/forum/topicss/".$row['cat_id']."/".$row['subcat_id']."'>
				  ".$row['subcategory_title']."<br /></a>";
			echo $row['subcategory_desc']."</td>";
			echo "<td class='num-topics'>".getnumtopics($parent_id, $row['subcat_id'])."</td></tr>";
		}
	}
	
	function getnumtopics($cat_id, $subcat_id) {
		include ('dbconn.php');
		$select = mysqli_query($con, "SELECT category_id, subcategory_id FROM topics WHERE ".$cat_id." = category_id 
									  AND ".$subcat_id." = subcategory_id");
		return mysqli_num_rows($select);
	}

	function disptopics($cid, $scid) {
		include ('dbconn.php');
		$select = mysqli_query($con, "SELECT topic_id, author, title, date_posted, views FROM categories, subcategories, topics 
									  WHERE ($cid = topics.category_id) AND ($scid = topics.subcategory_id) AND ($cid = categories.cat_id)
									  AND ($scid = subcategories.subcat_id) ORDER BY views DESC");
		
		if (mysqli_num_rows($select) != 0) {
			echo "<table class='topic-table'>";
			echo "<tr><th>Title</th><th>Posted By</th><th>Date Posted</th><th>Views</th><th>Replies</th></tr>";
			while ($row = mysqli_fetch_assoc($select)) {
				$select1 = mysqli_query($con, "SELECT category_id, subcategory_id, topic_id FROM replies WHERE $cid = category_id AND $scid = subcategory_id AND ".$row['topic_id']." = topic_id");
				echo "<tr><td><a href='/forum/readtopics/".$cid."/".$scid."/".$row['topic_id']."'>
					 ".$row['title']."</a></td><td>".$row['author']."</td><td>".$row['date_posted']."</td><td>".$row['views']."</td>
					 <td>".mysqli_num_rows($select1)."</td></tr>";
			}
			echo "</table>";
		} else {
			echo "<p>this category has no topics yet!  ";
		}
	}
	function deletepost($cid, $scid, $tid){
		include ('dbconn.php');
		$select = mysqli_query($con, "DELETE FROM 
							topics WHERE (".$cid." = categories.cat_id) AND
									  (".$scid." = subcategories.subcat_id) AND (".$tid." = topics.topic_id);");
		header("Location: /forum/topicss/".$cid."/".$scid."");
	
	}
	function disptopic($cid, $scid, $tid) {
		include ('dbconn.php');
		$select = mysqli_query($con, "SELECT cat_id, subcat_id, topic_id, author, title, content, date_posted FROM 
									  categories, subcategories, topics WHERE ($cid = categories.cat_id) AND
									  ($scid = subcategories.subcat_id) AND ($tid = topics.topic_id);");
		$row = mysqli_fetch_assoc($select);
		$score=mysqli_query($con,"SELECT point FROM users WHERE username='".$row['author']."';");
		$row1=mysqli_fetch_assoc($score);
		echo nl2br("<div class='row' style='clear:both;'><div class='col-sm-3' id='title'><h6 class='title'>".$row['title']."</h6><p>".$row['author']."\n".$row['date_posted']."</p>"."<p>Score: ".$row1['point']."</div>");
		echo "<div class='col-sm-9' id='conten'><div><p>".$row['content']."</p></div></div>";
	}
	
	function addview($cid, $scid, $tid) {
		include ('dbconn.php');
		$update = mysqli_query($con, "UPDATE topics SET views = views + 1 WHERE category_id = ".$cid." AND
									  subcategory_id = ".$scid." AND topic_id = ".$tid."");
	}
	
	function replylink($cid, $scid, $tid) {
		echo "<p><a href='/forum/replytos/".$cid."/".$scid."/".$tid."'>Reply to this post</a></p>";
	}
	function checkuser($tid,$name){
		include ('dbconn.php');
		$select = mysqli_query($con, "SELECT author FROM topics WHERE  topic_id=".$tid.";");
		if($select){
			$row = mysqli_fetch_assoc($select);
				if($row['author']==$name){
					return true;
				}	
			}
			
		
		return false;
	}
	function replytopost($cid, $scid, $tid) {
		echo "<div >
		<form action='/forum/addreplys.php?cid=".$cid."&scid=".$scid."&tid=".$tid."' method='POST'>
			  <p>Comment: </p>
			  <textarea cols='80'  rows='20' id='comment' name='comment' maxlength='350' style='width:75%;' autofocus='on' minlength='5'></textarea><br />
			  <input type='submit' value='add comment' />
			  </form></div>";
	}

	
	function dispreplies($cid, $scid, $tid) {
		include ('dbconn.php');
		$select = mysqli_query($con, "SELECT replies.author, comment, replies.date_posted FROM categories, subcategories, 
									  topics, replies WHERE ($cid = replies.category_id) AND ($scid = replies.subcategory_id)
									  AND ($tid = replies.topic_id) AND ($cid = categories.cat_id) AND 
									  ($scid = subcategories.subcat_id) AND ($tid = topics.topic_id) ORDER BY reply_id ASC");
		if (mysqli_num_rows($select) != 0) {
			echo "<div class='content'><table class='reply-table'>";
			while ($row = mysqli_fetch_assoc($select)) {
				echo nl2br("<tr><th width='15%'><p>".$row['author']."</p></th><td>".$row['date_posted']."\n".$row['comment']."\n\n</td></tr>");
			}
			echo "</table></div>";
		}
	}
	
	function countReplies($cid, $scid, $tid) {
		include ('dbconn.php');
		$select = mysqli_query($con, "SELECT category_id, subcategory_id, topic_id FROM replies WHERE ".$cid." = category_id AND 
									  ".$scid." = subcategory_id AND ".$tid." = topic_id");
		$update = mysqli_query($con, "UPDATE topics SET replies = ".mysqli_num_rows($select)." WHERE category_id = ".$cid." AND
									  subcategory_id = ".$scid." AND topic_id = ".$tid."");
		return mysqli_num_rows($select);
	}
?>





















