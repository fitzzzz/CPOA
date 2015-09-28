<?php 
class FilmManager extends Model{

	// récupération des films
	function getFilm(){
			$req = $this->executerRequete('SELECT * FROM film order by titre');
			$result= $req->fetchAll();
			return $result;
		}
	// récupération des informations d'un film
	public function getFilmDetails($idfilm)
	{
		$sql = 'SELECT * FROM film WHERE numVisa=:numvisa';
		$param = array(':numvisa' => $idfilm);
		$req = $this->executerRequete($sql,$param);
		$film = $req->fetch(PDO::FETCH_ASSOC);
		$sql = 'SELECT v.numVip, nom, prenomUsuel FROM vip v, jouer j WHERE v.numVip=j.numVip and numVisa=:numvisa';
		$req = $this->executerRequete($sql,$param);
		$vip = $req->fetchall();
		$sql = 'SELECT g.numGenre, g.libelleGenre FROM genre g, film f WHERE g.numGenre=f.numGenre and f.numVisa=:numvisa';
		$req = $this->executerRequete($sql,$param);
		$genre = $req->fetchall();
		$sql = 'SELECT v.numVip, nom, prenomUsuel FROM vip v, realise r WHERE v.numVip=r.numVip and numVisa=:numvisa';
		$req = $this->executerRequete($sql,$param);
		$rea = $req->fetchall();
		$detail = array(
			"detail" => $film ,
			"vip" => $vip,
			"genre" => $genre,
			"rea" => $rea,
		);
		return $detail;
	}

}
?>
