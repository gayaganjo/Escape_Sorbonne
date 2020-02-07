<?php session_start() ?>
<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
    <meta charset="UTF-8">
    <title>Escape Sorbonne</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- <<div><img src="src/img/Escape_Sorbone.png"><br><t2>Escape Sorbonne</t2></div> -->
<h1 class="quiz">Bienvenue <?php echo $_SESSION['Nom']; ?> </h1> <br>
    <h3 class="quiz">avant de commencer voiçi les regles du jeu :</h2>   
    <p class="quiz"> pour commencer il faut dabbord choisir un mode </p>      
    <a href="index.php" ">Inscription</a>               
</body>

</html>