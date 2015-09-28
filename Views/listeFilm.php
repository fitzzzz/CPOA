<?php 
	$title = 'Liste des Films';
	
	ob_start();
 ?>

    <div class="container">

        <!-- Page Header -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Liste des Films
                </h1>

            </div>
                
        </div>
        <!-- affichage des films -->
        <div class="row" >
            <?php foreach ($film as $donnees) { ?>
                <a href="index.php?action=details&amp;idfilm=<?php echo $donnees['numVisa']; ?>">
                    <div  class="col-md-2 col-sm-3  col-xs-6 img gallerie" style="background:url(<?php echo $donnees['photo']; ?>) no-repeat center; background-size:cover;">
                    </div> 
                </a>

             <?php } ?>
            
        </div>
        <hr>

    </div>
 	
 <?php 
 	$content=ob_get_clean();
 	require'Views/layout.php'; 
 ?>
