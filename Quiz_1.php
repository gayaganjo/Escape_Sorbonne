<?php session_start() ?>
<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
    <meta charset="UTF-8">
    <title>Escape Sorbonne</title>
        <link rel="stylesheet" type="text/css" href="css/header.css"/>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="design/linearicons.css">
			<link rel="stylesheet" href="design/font-awesome.min.css">
			<link rel="stylesheet" href="design/bootstrap.css">
			<link rel="stylesheet" href="design/magnific-popup.css">
			<link rel="stylesheet" href="design/jquery-ui.css">				
			<link rel="stylesheet" href="design/nice-select.css">							
			<link rel="stylesheet" href="design/animate.min.css">
			<link rel="stylesheet" href="design/owl.carousel.css">				
			<link rel="stylesheet" href="design/main.css">
</head>
<body>
  <header>
      <h1 class="float-l">
      <a href="#" title="Chaves">Escape_Sorbone</a>
             </h1>
          
      <input type="checkbox" id="control-nav" />
      <label for="control-nav" class="control-nav"></label>
      <label for="control-nav" class="control-nav-close"></label>

      <nav class="float-r">
        <ul class="list-auto">
          <li>
            <a href="#Chaves" title="Chaves">Inventaire</a>
          </li>
          <li>
            <a href="#Chiquinha" title="Chiquinha">A propos</a>
          </li>
          <li>
            <a href="#profil" title="Seu Madruga"><?php echo $_SESSION['Nom']; ?></a>
          </li>
          <li>
            <a href="deconnexion.php" title="Quico">deconnexion</a>
          </li>
        </ul>
      </nav>
  </header><br><br><br><br>
  <h1 class="welcome">Bienvenue <?php echo $_SESSION['Nom']; ?> </h1> <br>
  <section >
				<div class="container">
					<div class="row fullscreen align-items-center justify-content-between">
						<div class="col-lg-6 col-md-6 banner-left">
							<h6 class="quiz">c'est parti</h6>
							<h1 class="quiz">premiere enigme</h1>
							<p class="article-l">
								You will begin to realise why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures.
							</p>
							<a href="#" class="but button4 text-uppercase">suivant</a>
						</div>
						<div class="col-lg-6 col-md-6 banner-right quiz">
							<img class="img-fluid" src="src/img/sorbonne.jpg" alt="">
						</div>
					</div>
				</div>					
			</section>
   
    <!-- <div id="rcorners2" ><div><img src="src/img/Escape_Sorbone.png"></div><div><p class="article"> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum </p></div> 
    <button class="but button4">Découverte</button></div><br> -->
                 
</body>

</html>