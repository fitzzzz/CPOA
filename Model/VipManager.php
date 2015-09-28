<?php 
class VipManager extends Model{

	// récuparation des VIP
	function getVip(){
		$req = $this->executerRequete('SELECT numVip, nom, prenomUsuel, imgProfil FROM vip order by nom');
		
		$result= $req->fetchAll(PDO::FETCH_ASSOC);
		return $result;
	}

	function getFilm(){
		$req = $this->executerRequete('SELECT * FROM film order by titre');
		$result= $req->fetchAll();
		return $result;
	}

	// récupération des informations d'un VIP
	function getVipDetails($vipid){
		
		$req=$this->executerRequete('SELECT v.nom, prenomUsuel, civilite, dateNaissance, lieuNaissance, imgProfil, situationPerso, profession, p.numPays, p.nomPays 
			FROM vip v LEFT JOIN pays p ON p.numPays=v.numPays WHERE numvip=:numVip',
			array(':numVip'=>$vipid));

	    $result=$req->fetchAll(PDO::FETCH_ASSOC);
	  	return $result;
	}

	// récuparation des films d'un VIP
	function getVipFilm($vipid){
		$req=$this->executerRequete('SELECT f.numVisa, f.photo, f.titre, f.anneeSortie FROM film f, jouer j WHERE f.numVisa=j.numVisa AND j.numVip=:numVip',
			array(':numVip'=>$vipid));

	    $result=$req->fetchAll(PDO::FETCH_ASSOC);
	  	return $result;
	}

	// récupération des mariages et divorces d'un VIP
	public function getUnion($numVip)
	{
		$sql = 'SELECT * from alliance Where numVip1=:numVip OR numVip2=:numVip';
		$param = array(':numVip' => $numVip);
		$req = $this->executerRequete($sql,$param);
		$union = $req->fetchAll();
		$arr = array();
		$i=0;
		foreach($union as $value)
		{
			$sql = 'SELECT numVip,nom,prenomUsuel from vip WHERE numVip=:numVip';
			if($numVip == $value['numVip1'])
			{
				$param = array(':numVip' => $value['numVip2']);
			} else {
				$param = array(':numVip' => $value['numVip1']);
			}
			$req = $this->executerRequete($sql,$param);
			$vip = $req->fetch(PDO::FETCH_ASSOC);
			$vip['dateEvenement'] = $value['dateEvenement'];
			$vip['lieu'] = $value['lieu'];
			$vip['codeEtat'] = $value['codeEtat'];
			$arr[$i] = $vip;
			$i++;
		}
		return $arr;
	}

}
?>


