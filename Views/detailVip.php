<?php 
	$title = 'Détails du VIP';  
    
	ob_start();
 ?>

    <div class="container">

        <?php foreach ($detail as $vip) {
        // gestion de la date et de l'âge
        $date = new DateTime($vip['dateNaissance']);
        $dateauj=new DateTime(date("Y-m-d"));
        $interval=$date->diff($dateauj); 
        $age = $interval->format('%Y')." ans";?>

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><?php echo $vip['prenomUsuel'] . " " . $vip['nom'];?>
                </h1>
                    <div  class="col-md-3  col-sm-5  col-xs-10 img detail" style="background:url(<?php echo $vip['imgProfil']; ?>) no-repeat center; background-size:cover;"> 
                    </div>
                <ul>
                    <li>Civilité: <?php if ($vip['civilite']=="H"){echo 'Homme';} else{echo 'Femme';};?></li>
                    <li>Date de Naissance: <?php echo $date->format('d/m/Y')?></li>
                    <li>Age: <?php echo $age ?></li>
                    <li>Lieu de Naissance: <?php echo $vip['lieuNaissance'];?></li>
                    <li>Nationalité: <?php echo $vip['nomPays'];?></li>
                    <!-- affichage des informations sur la situation personnelle du VIP -->
                    <li>Situation personnelle: 
                        <?php if($vip['situationPerso'] == 1){
                            if($vip['civilite'] == 'H'){
                                echo 'Marié';
                            }
                            else{ 
                                echo 'Mariée';
                            }
                            }
                            else if ($vip['situationPerso'] == 2){
                                if ($vip['civilite'] == 'H'){  
                                    echo 'Divorcé';
                                }
                                else{ 
                                    echo 'Divorcée';
                                }
                            }
                            else{ 
                                echo 'Célibataire';
                            }?></li>
                    <li>Profession: <?php echo $vip['profession'];?></li>
                </ul>
            </div>
        </div>
        <hr>

        <!-- mariage/dirvorce -->
        
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header">Mariages / divorces de <?php echo $vip['prenomUsuel'] . " " . $vip['nom'];?>     
                    </h3>                
                </div>
            </div>
            <?php if($union != NULL) { ?>
                <ul id=mariage>
                    <?php foreach ($union as $value){ ?>
                        <li>
                            <?php if($value['codeEtat']==1){ ?>
                                <?php if($vip['civilite']=='H'){
                                    echo 'Marié';
                                }
                                else{
                                    echo 'Mariée';
                                } ?>
                                 avec <a href="index.php?action=<?php echo 'details'; ?>&amp;vipid=<?php echo $value['numVip']; ?>"><?php echo $value['prenomUsuel']." ".$value['nom']; ?></a> le <?php $date = new DateTime($value['dateEvenement']); echo $date->format('d/m/Y'); ?> à <?php echo $value['lieu'] ?>.
                            <?php } else { ?>  
                                 <?php if($vip['civilite']=='H'){
                                    echo 'Divorcé';
                                }
                                else{
                                    echo 'Divorcée';
                                } ?>
                                 de <a href="index.php?action=<?php echo 'details'; ?>&amp;vipid=<?php echo $value['numVip']; ?>"><?php echo $value['prenomUsuel']." ".$value['nom']; ?></a> le <?php $date = new DateTime($value['dateEvenement']); echo $date->format('d/m/Y'); ?>.
                            <?php } ?>
                        </li>
                    <?php } ?>
                </ul>
            <?php } else { ?>          
                <div class="alert alert-info" role="alert">
                    <p>Aucun mariage ou divorce renseigné pour <b><?php echo $vip['prenomUsuel']." ".$vip['nom'];?></b></p>
                </div>
                <?php } ?>
        
      
        <hr>
        <!-- photo -->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">Photos de <?php echo $vip['prenomUsuel'] . " " . $vip['nom'];?>     
                </h3>                
            </div>
        </div>
            <?php if($photoVip != NULL) {  
                foreach ($photoVip as $p) { ?>
                
                    <div  class="col-md-3  col-sm-5  col-xs-10 img" style="background:url(<?php echo $p['url']; ?>) no-repeat center; background-size:cover;">           
                    </div>
                <?php } } else{?>
                     <div class="alert alert-info" role="alert">
                        <p>Aucune photo disponible pour <b><?php echo $vip['prenomUsuel']." ".$vip['nom'];?></b></p>
                    </div>
                <?php }?>   
        
        <hr>
        <!-- film du VIP -->
        <div class="row last">

            <div class="col-lg-12">
                <h3 class="page-header">Films de <?php echo $vip['prenomUsuel'] . " " . $vip['nom'];?>     
                </h3>                
            </div>
        </div>
            <?php if($film != NULL) {  
                foreach ($film as $f) { ?>
                
                    <div  class="col-md-2  col-sm-3  col-xs-6 img" style="background:url(<?php echo $f['photo']; ?>) no-repeat center; background-size:cover;">           
                        <h3 class="titreVip">
                            <a href="index.php?action=details&amp;idfilm=<?php echo $f['numVisa']; ?>"><?php echo $f['titre'];?></a>
                        </h3>
                    </div>
                <?php } } else{?>
                     <div class="alert alert-info" role="alert">
                        <p>Aucun film renseigné pour <b><?php echo $vip['prenomUsuel']." ".$vip['nom'];?></b></p>
                    </div>
                <?php }?>   
    
    </div>
    <hr id="hrEnd">
 
    
<?php } ?>
 <?php 
 	$content=ob_get_clean();
 	require'Views/layout.php'; 
 ?>
