<?php session_start() ?>
<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
    <meta charset="UTF-8">
    <title>Escape Sorbonne</title>
        <link rel="stylesheet" type="text/css" href="css/header.css"/>
    <link rel="stylesheet" href="css/style.css">
    
</head>
<body>
<header>
      <h1 class="float-l">
        <!-- <img src="src/img/logo.png"> -->
        <a href="index.html" title="Chaves">escape sorbonne</a>
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
            <a href="#Seu-Madruga" title="Seu Madruga">retour</a>
          </li>
          <li>
            <a href="deconnexion.php" title="Quico">deconnexion</a>
          </li>
        </ul>
      </nav>
    </header><br><br><br><br>
    
    <div>
    <h1 class="welcome">Bienvenue <?php echo $_SESSION['Nom']; ?> </h1> <br>
    <h3 class="quiz">avant de commencer voiçi les regles du jeu :</h2>   <br> 
    <p class="quiz"> veuillez lire les deux modes </p> <br>     
    <div id="rcorners2"><p class="article"> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum </p> 
    <form action="Quiz_1.php"><button  class="but button4 text-uppercase">Découverte</button></div><form><br>
    <div id="rcorners2"><p class="article"> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum </p>
    <button class="but button4 text-uppercase"> Mission  </button></div><br>
    <form action="deconnexion.php"><button class="but button4" type="submit" >deconnexion</button></form>
    </div>               
</body>

</html>