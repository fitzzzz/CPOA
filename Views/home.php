<?php 
	$title = 'Voicela';
	
	ob_start();
 ?>
	<div class="row">
		<img src="Web/css/images/background.png" class="col-lg-offset-2 col-lg-8">
	</div>
	

 <?php 
 	$content=ob_get_clean();
 	require'Views/layout.php'; 
 ?>