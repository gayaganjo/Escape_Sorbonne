<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
    <meta charset="UTF-8">
    <title>Escape Sorbonne</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <h1 class="quiz">veuillez saisire vos coordonnées </h1><br>
    <form action="" method="post">
       
        <div class="quiz">
            <input class="t" type="text" name="Nom" id="Nom" placeholder="votre nom" required><br><br>
            <input class="t" type="password" name="PassWord" id="PassWord" placeholder="votre mot de pass" required><br>
            <br>
            <button class="but button4" type="submit" name="formlogin" >Identification</button>
        </div>
    </form>
<?php 
 if(isset($_POST['formlogin']))
 {
 	extract($_POST);

 	if(!empty($Nom) && !empty($PassWord))
 	{
 		 include 'database.php';
          global $db;

 		$q = $db->prepare("SELECT * FROM Utilisateur WHERE Nom = :Nom");
 		$q->execute(['Nom' => $Nom]);
 		$result = $q->fetch();
        


 		if($result == true)
 		{
             $_SESSION['Nom']= $result['Nom'];
             $_SESSION['PassWord']= $result['PassWord'];
             $_SESSION['Email']= $result['Email'];
 		   header('location:acceuil.php');
             //le compte existe bien
             
 		}
 		else
 		{
 			echo "Le compte portant le nom " . $Nom . "n'existe pas";
 		}
 	}
 	else
 	{
 		echo "Veuillez completer l'ensemble des champs"; 
 	}
 } 

 ?>
</body>

</html>