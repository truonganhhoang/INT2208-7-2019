<?php

	function chungloai()
	{
		global $db;
		$query='select * from chungloai';
		$statement = $db->prepare($query);
		$statement->execute();
		return $statement;
	}
	function chungloai2($ChungLoaiID)
	{
		global $db;
		$query='select * from chungloai where ChungLoaiID=:ChungLoaiID';
		$statement = $db->prepare($query);
		$statement->bindValue(':ChungLoaiID',$ChungLoaiID);
		$statement->execute();
		return $statement;
	}
	function TrangChu()
	{
		global $db;
		$query='select * from thietbi  ORDER BY ChungLoaiID  DESC limit 3';  //lay 3 bai viet moi nhat
		$statement = $db->prepare($query);
		$statement->execute();
		return $statement;
	}
	function thietbi($ChungLoaiID)
	{
		global $db;
		$query='select * from thietbi where ChungLoaiID = :ChungLoaiID';
		$statement=$db->prepare($query);
		$statement->bindValue(':ChungLoaiID',$ChungLoaiID);
		$statement->execute();
		
		return $statement;
	}	
	function ChiTietThietBi($MaThietBi)
	{
		global $db;
		$query='select * from thietbi where MaThietBi = :MaThietBi';
		$statement=$db->prepare($query);
		$statement->bindValue(':MaThietBi',$MaThietBi);
		$statement->execute();
		
		return $statement;
	}
	function Thietbilienquan($ChungLoaiID,$MaThietBi)
	{
		global $db;
		$query='select * from thietbi where ChungLoaiID = :ChungLoaiID AND MaThietBi!= :MaThietBi limit 3';
		$statement=$db->prepare($query);
		$statement->bindValue(':ChungLoaiID',$ChungLoaiID);
		$statement->bindValue(':MaThietBi',$MaThietBi);

		$statement->execute();
		
		return $statement;
	}
//Trang Chủ
	function thietbi_moinhat($ChungLoaiID)
	{
		global $db;
		$query='select * from thietbi where ChungLoaiID=:ChungLoaiID  order by MaThietBi DESC limit 1';
		$statement = $db->prepare($query);
		$statement->bindValue(':ChungLoaiID',$ChungLoaiID);
		$statement->execute();
		return $statement;
	}
	function thietbi_4moinhat($ChungLoaiID)
	{
		global $db;
		$query='select * from thietbi where ChungLoaiID=:ChungLoaiID ORDER by MaThietBi DESC limit 4';
		$statement = $db->prepare($query);
		$statement->bindValue(':ChungLoaiID',$ChungLoaiID);
		$statement->execute();
		return $statement;
	}
	function Top5ThietBiMoi()
	{
		global $db;
		$query='select * from thietbi order by MaThietBi DESC limit 5';
		$statement = $db->prepare($query);
		$statement->execute();
		return $statement;
	}
	
?>