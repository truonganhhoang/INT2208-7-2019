<?php 

	function thietbi()
	{
		global $db;
		$query='select * from thietbi order by ArticleID DESC';
		$statement=$db->prepare($query);
		$statement->execute();
		return $statement;
	}
	function chungloai()
	{
		global $db;
		$query='select * from chungloai ';
		$statement=$db->prepare($query);
		$statement->execute();
		return $statement;
	}
	
	function Them_TB($TenThietBi,$NoiDung,$NhaSX,$image_name,$SoLuong,$DonViTinh,$DonGia,$ChungLoaiID){
        global $db;
        $query="INSERT INTO thietbi (TenThietBi,NoiDung,NhaSX,AnhThietBi,SoLuong,DonViTinh,DonGia,ChungLoaiID) 
		values (:TenThietBi,:NoiDung,:NhaSX,:image_name,:SoLuong,:DonViTinh,:DonGia,:ChungLoaiID)";
		$statement = $db->prepare($query);
        $statement->bindValue(':TenThietBi', $TenThietBi);
        $statement->bindValue(':NoiDung', $NoiDung);
		$statement->bindValue(':NhaSX', $NhaSX);
		$statement->bindValue(':image_name',$image_name );
		$statement->bindValue(':SoLuong',$SoLuong );
		$statement->bindValue(':DonViTinh',$DonViTinh );
		$statement->bindValue(':DonGia',$DonGia );
		$statement->bindValue(':ChungLoaiID',$ChungLoaiID );      
        $statement->execute();
        $statement-> closeCursor();         
    }
	function QL_TB()
	{
		global $db;
		$query='select * from thietbi,chungloai where thietbi.ChungLoaiID=chungloai.ChungLoaiID order by MaThietBi DESC ';
		$statement=$db->prepare($query);
		$statement->execute();
		$statement->setFetchMode(PDO::FETCH_ASSOC);
		return $statement;
	}
	function TB_SUA_TB($MaThietBi)
	{	
		global $db;
		$query='select * from thietbi where MaThietBi=:MaThietBi';
		$statement=$db->prepare($query);
		$statement->bindValue(':MaThietBi', $MaThietBi);
		$statement->execute();
		return $statement;
	}
	function GetChungloai($ChungLoaiID) //Sua_TB
		{	
			global $db;
			$query='select * from chungloai order by ChungLoaiID ASC ' ;
			$statement=$db->prepare($query);
			$statement->execute();
			$s2="";
			foreach($statement as $r2)
			{
					if($r2["ChungLoaiID"]==$ChungLoaiID)
						$s2.="<option value='".$r2["ChungLoaiID"]."' selected>";			
					else
						$s2.="<option value='".$r2["ChungLoaiID"]."'>";
					$s2.=$r2["TenLoai"]."</option>";
				
			}
			echo  $s2;
		}
	function  SUA_TB($TenThietBi,$NoiDung,$NhaSX,$image_name,$SoLuong,$DonViTinh,$DonGia,$ChungLoaiID,$MaThietBi)
	{
			global $db;
        $query="UPDATE thietbi
		SET TenThietBi =:TenThietBi,NoiDung=:NoiDung,NhaSX=:NhaSX,ChungLoaiID=:ChungLoaiID,AnhThietBi=:image_name,SoLuong =:SoLuong ,DonViTinh =:DonViTinh ,DonGia =:DonGia 
				WHERE MaThietBi = :MaThietBi";
		$statement = $db->prepare($query);
        $statement->bindValue(':TenThietBi', $TenThietBi);
        $statement->bindValue(':NoiDung', $NoiDung);
		$statement->bindValue(':SoLuong', $SoLuong);
		$statement->bindValue(':NhaSX', $NhaSX);
		$statement->bindValue(':image_name',$image_name );
		$statement->bindValue(':DonViTinh',$DonViTinh );
		$statement->bindValue(':DonGia',$DonGia );
		$statement->bindValue(':ChungLoaiID',$ChungLoaiID );  
		$statement->bindValue(':MaThietBi',$MaThietBi );    
        $statement->execute();
        $statement-> closeCursor();   
	}	
	function Xoa_TB($MaThietBi)
	{
		global $db;
		$query='Delete from thietbi where MaThietBi=:MaThietBi';
		$statement=$db->prepare($query);
		$statement->bindValue(':MaThietBi', $MaThietBi);
		$statement->execute();
		return $statement;
	}
	//LOAI
	function QL_Loai()
	{
		global $db;
		$query='select * from chungloai';
		$statement=$db->prepare($query);
		$statement->execute();
		$statement->setFetchMode(PDO::FETCH_ASSOC);
		return $statement;
	}
	function Loai_SUA_Loai($ChungLoaiID)
	{	
		global $db;
		$query='select * from chungloai where ChungLoaiID=:ChungLoaiID';
		$statement=$db->prepare($query);
		$statement->bindValue(':ChungLoaiID', $ChungLoaiID);
		$statement->execute();
		return $statement;
		
		
	}
	function Them_Loai($TenLoai){
        global $db;
         $query="INSERT INTO chungloai (TenLoai) 
		values (:TenLoai)";
		$statement = $db->prepare($query);
        $statement->bindValue(':TenLoai', $TenLoai);
        $statement->execute();
        $statement-> closeCursor();         
    }
	
	//
	
	function Xoa_Loai($ChungLoaiID)
	{
		global $db;
		$query='Delete from chungloai where ChungLoaiID=:ChungLoaiID';
		$statement=$db->prepare($query);
		$statement->bindValue(':ChungLoaiID', $ChungLoaiID);
		$statement->execute();
		return $statement;
	}

	function  SUA_Loai($TenLoai,$ChungLoaiID)
	{
			global $db;
        $query="UPDATE chungloai
		SET TenLoai =:TenLoai,ChungLoaiID=:ChungLoaiID 
				WHERE ChungLoaiID = :ChungLoaiID";
		$statement = $db->prepare($query);
        $statement->bindValue(':TenLoai', $TenLoai);
		$statement->bindValue(':ChungLoaiID', $ChungLoaiID);
        $statement->execute();
        $statement-> closeCursor();   
	}	
	//TAIKHOAN
	function QL_TK()
	{
		global $db;
		$query='select * from users ';
		$statement=$db->prepare($query);
		$statement->execute();
		$statement->setFetchMode(PDO::FETCH_ASSOC);
		return $statement;
	}
	function TK_SUA_TK($UserID)
	{	
		global $db;
		$query='select * from users where UserID=:UserID';
		$statement=$db->prepare($query);
		$statement->bindValue(':UserID', $UserID);
		$statement->execute();
		return $statement;
	}
	function  SUA_TK($UserID,$UserName,$Password,$Name,$Email,$Phone)
	{
			global $db;
        $query="UPDATE users
		SET UserID =:UserID,UserName=:UserName,Password=:Password,Name =:Name,Email=:Email,Phone=:Phone
				WHERE UserID = :UserID";
		$statement = $db->prepare($query);
        $statement->bindValue(':UserID', $UserID);
        $statement->bindValue(':UserName', $UserName);
		$statement->bindValue(':Name', $Name);
		$statement->bindValue(':Password', $Password);
		$statement->bindValue(':Email', $Email);
		$statement->bindValue(':Phone', $Phone);   
        $statement->execute();
        $statement-> closeCursor();   
	}	
	function Xoa_TK($UserID)
	{
		global $db;
		$query='Delete from users where UserID=:UserID';
		$statement=$db->prepare($query);
		$statement->bindValue(':UserID', $UserID);
		$statement->execute();
		return $statement;
	}
	function login($UserName,$Password)
	{
		global $db;
		$query='select * from users where UserName=:UserName and Password=:Password';
		$statement=$db->prepare($query);
		$statement->bindValue(':UserName', $UserName);
		$statement->bindValue(':Password', $Password);
		$statement->execute();
		return $statement;
	}
	 function register($UserName,$Password,$Name,$Email,$Phone){
        global $db;
        $query="INSERT INTO users(UserName,Password,Name,Email,Phone)
                VALUES(:UserName,:Password,:Name,:Email,:Phone)";
        $statement = $db->prepare($query);
        $statement->bindValue(':UserName',$UserName);
        $statement->bindValue(':Password',$Password);
        $statement->bindValue(':Name',$Name);
        $statement->bindValue(':Email',$Email);
        $statement->bindValue(':Phone',$Phone);
        $statement->execute();        
    }
	function dangnhap($UserName,$Password)
	{
		global $db;
		$query='select * from users where UserName=:UserName and Password=:Password';
		$statement=$db->prepare($query);
		$statement->bindValue(':UserName', $UserName);
		$statement->bindValue(':Password', $Password);
		$statement->execute();
		return $statement;
	}
	
?>