<?php 
    $title = 'Gallerie';
    
    ob_start();
 ?>


    <div class="container">

        <!-- Page Header -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Gallerie d'images</h1>
            </div>
        </div>

        <!-- affichage des photos -->
        <div class="row">
            <?php foreach ($photo as $p) { ?>
                <a href="index.php?action=details&amp;vipid=<?php echo $p['numVip']; ?>">
                    <div  class="col-md-3 col-sm-5  col-xs-10 img gallerie" style="background:url(<?php echo $p['url']; ?>) no-repeat center; background-size:cover;">
                
            </div>

            </a>

             <?php } ?>
            <?php foreach ($vip as $donnees) { ?>
            <a href="index.php?action=details&amp;vipid=<?php echo $donnees['numVip'] ?>">
            <div  class="col-md-3  col-sm-5  col-xs-10 img gallerie" style="background:url(<?php echo $donnees['imgProfil']; ?>) no-repeat center; background-size:cover;">
                
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
