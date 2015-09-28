<?php $title = 'Erreur';?>

<?php ob_start(); ?>
	<p id="msg_erreur">Une erreur est survenue :<br><?php echo $msgErreur;?></p>
<?php $content = ob_get_clean(); ?>
<?php require 'Views/layout.php'; ?>
