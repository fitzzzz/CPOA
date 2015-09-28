<?php 

	require 'Model/Model.php';
	require 'Model/VipManager.php';
	require 'Model/FilmManager.php';
	require 'Model/PhotoManager.php';

	try {

		$vipManager = new VipManager();
		$filmManager = new FilmManager();
		$photoManager = new PhotoManager();
		
		$vip = $vipManager->getVip();
		$photo = $photoManager->getPhoto();
		$film = $filmManager->getFilm();

		if(isset($_GET['action'])){
			// Gestion de la liste des vip
			if($_GET['action']=='listeVip'){
				require 'Views/listeVip.php';

			}
			else if($_GET['action']=='contact'){
				require 'Views/contact.php';
			}
			// gestion détails d'un VIP
			else if(($_GET['action']=='details')AND isset($_GET['vipid'])){
							
				if($_GET['vipid']<1){
					throw new Exception("L'id de votre vip est introuvable.");	
				}
				else{
					$film = $vipManager->getVipFilm($_GET['vipid']);
					$detail = $vipManager ->getVipDetails($_GET['vipid']);
					$photoVip = $photoManager->getPhotoVip($_GET['vipid']);
					$union = $vipManager -> getUnion($_GET['vipid']);
					if($detail==null){
						throw new Exception("L'id du vip n'existe pas dans la base de données.");
						
					}
					require'Views/detailVip.php';
				}
			}
			// gestion détails film
			else if(($_GET['action']=='details')AND isset($_GET['idfilm'])){
				$film = $filmManager->getFilmDetails($_GET['idfilm']);
				if($film != null)
				{
					$detail = $film['detail'];
					$vip = $film['vip'];
					$genre = $film['genre'];
					$rea = $film['rea'];
					if($detail!=null)
					{
						require './Views/detailFilm.php';
					} else {
						throw new Exception('Aucun film avec cette id existe dans la base de données !');
					}
				} else {
					throw new Exception('Aucun film avec cette id existe dans la base de données !');
				}
				 
				

			}
			// gestion des films
			else if($_GET['action']=='listeFilm'){
				require 'Views/listeFilm.php';
			}
			else if ($_GET['action']=='gallerie'){	
				require 'Views/gallerie.php';
			}
			else{
				throw new Exception("Action indisponible.");			
			}
			
		}
		else{
			require 'Views/home.php';
		}
	} 
	catch (Exception $e) {
		$msgErreur = $e->getMessage();
		require 'Views/error.php';
	}
 ?>