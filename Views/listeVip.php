<?php 
	$title = 'Liste des VIP';
	
	ob_start();
 ?>

 
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Liste des VIP
                    <small>acteurs et réalisateurs</small>
                </h1>
            </div>
        </div>
        <!-- affichage des VIP -->
        <div class="row" id="lesVip">

            <?php foreach ($vip as $donnees) { ?>
            <div  class="col-md-3  col-sm-5  col-xs-10 img" style="background:url(<?php echo $donnees['imgProfil']; ?>) no-repeat center; background-size:cover;">
                
                <h3 class="titreVip">
                    <a href="index.php?action=<?php echo 'details'; ?>&amp;vipid=<?php echo $donnees['numVip'] ?>"><?php echo $donnees['prenomUsuel']," ",$donnees['nom']; ?></a>
                </h3>
            </div>

            <?php } ?>
            
        </div>
        <hr>

    </div>
 	
 <?php 
 	$content=ob_get_clean();
 	require'Views/layout.php'; 
 ?>
