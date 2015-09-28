 <?php 
	$title = 'Contact';
	
	ob_start();
 ?>
 <div class="col-lg-offset-3">
 	<form class="col-lg-6" action="index.php" method="post">
	  <legend>Contact</legend>
	    <div class="form-group">
			<label for="nom">Votre Nom : </label>
		    <input id="nom" type="text" name="nomExp" class="form-control">
	    </div>
	   <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon">@ Email</span>
		    	<input id="mail" type="email" name="mailExp" class="form-control">
		    </div>
	   </div>
	    <div class="form-group">
 			<label for="message">Votre message : </label>
		    <textarea id="message" type="textarea" name="messageExp" class="form-control" rows="6">
		    </textarea>
	    </div>
	    
	   
	    <br>
	    <button type="submite" name="Email" class="btn btn-default">Envoyer</button>
	</form>
</div>


 <?php 
 	$content=ob_get_clean();
 	require'Views/layout.php'; 
 ?>