<!DOCTYPE html>
<html >
<head>
	<title><?php echo $title; ?></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="Web/CSS/style.css">

	<!-- Bootstrap Core CSS -->
    <link href="Web/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="Web/css/style.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="Web/images/favicon.png" />

</head>
<body id="<?php if($title=="Voicela"){echo'body-background';}else{echo 'body';} ?>">
	


<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">VOICELA</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="index.php?action=listeVip">VIP</a>
                    </li>
                    <li>
                        <a href="index.php?action=listeFilm">Films</a>
                    </li>
                    <li>
                        <a href="index.php?action=gallerie">Gallerie</a>
                    </li>
                    <li>
                         <a href="index.php?action=contact">Nous Contacter</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>




	

	<div id="content">
		<?php echo $content; ?>
	</div>

	    <!-- jQuery -->
    <script src="Web/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="Web/js/bootstrap.min.js"></script>

	<footer>
		<p>Site crée exclusivement en PHP5, HTML5 et CSS3</p>
	</footer>
</body>
</html>