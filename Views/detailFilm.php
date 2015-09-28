<?php 
	$title = 'Détail du Film';
	ob_start();
 ?>


    <div class="container">  
        <!-- affichage des détails d'un FILM -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><?php echo $detail['titre'];?>
                </h1>
                    <div  class="col-md-3  col-sm-5  col-xs-10 img detail" style="background:url(<?php echo $detail['photo']; ?>) no-repeat center; background-size:cover;"> 
                    </div>
                <ul>

                    <li>Date de sortie: <?php echo $detail['anneeSortie'];?></li>
                <!-- affichage du réalisateur du film -->
                <li>Réalisateur:
                <?php foreach($rea as $r){ ?> 
                    <a href="index.php?action=details&amp;vipid=<?php echo $r['numVip']; ?>"><?php echo $r['prenomUsuel']. " " .$r['nom'];?></li></a>
                <?php } ?>
                <?php foreach($genre as $value){ ?> 
                    <li>Genre: <?php echo $value['libelleGenre'];?></li>
                <?php } ?>
                <!-- affichage des acteurs du film -->
                <li>Acteurs:</li>
                <?php foreach($vip as $donnees){ ?> 
                    <a href="index.php?action=details&amp;vipid=<?php echo $donnees['numVip']; ?>"><li id="acteur"><?php echo $donnees['prenomUsuel']. " " .$donnees['nom'];?></li></a>
                <?php } ?>
                
                </ul>
               
            </div>
        </div>
        <hr>
        <!-- affichage du résumé du film -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Synopsis
                </h1>
                   
                <p><?php echo $detail['synopsis'];?></p>
               
            </div>
        </div>
        <hr>
        

    <hr id="hrEnd">

 <?php 
 	$content=ob_get_clean();
 	require'Views/layout.php'; 
 ?>
