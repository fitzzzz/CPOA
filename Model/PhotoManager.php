<?php 
class PhotoManager extends Model{

	// récupération des photos
	function getPhoto(){
		$req = $this->executerRequete('SELECT p.idPhoto, url, v.numVip FROM photo p, vip v, apparait a 
			WHERE p.idPhoto=a.idPhoto AND v.numVip=a.numVip');
		$result = $req->fetchAll(PDO::FETCH_ASSOC);
		return $result;
	}

	// récupération des photos d'un vip
	function getPhotoVip($vipid){
		
		$req=$this->executerRequete('SELECT url FROM photo p, apparait a WHERE p.idPhoto=a.idPhoto AND a.numVip=:numVip',
			array(':numVip'=>$vipid));
	    $result=$req->fetchAll(PDO::FETCH_ASSOC);
	  	return $result;
	}

}
?>
