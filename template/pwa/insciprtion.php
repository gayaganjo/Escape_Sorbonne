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

    <h1 class="quiz" >veuillez saisire vos coordonnées </h1><br>
    <form action="" method="post" >
       
    <div class="form_ins" id="form_1">
		<input class="t" type="text" name="Nom" id="Nom" placeholder="votre nom" required><br><br>
		<input class="t" type="text" name="Email" id="Email" placeholder="votre mail" required><br><br>
		<input class="t" type="password" name="PassWord" id="PassWord" placeholder="mot de pass" required><br><br>
        <input class="t" type="password" name="conpassword" id="conpassword" placeholder="confirmer mot de pass" required><br><br>

        <br>
        
        <button class="but button4" type="submit" name="formsend" >Inscription</button>
    </div>
</form>
<?php

				   if(isset($_POST['formsend'])){
							   	extract($_POST);
				   if(!empty($Nom) && !empty($PassWord) && !empty($conpassword) && !empty($Email)){
                                   		if($PassWord == $conpassword){
                                   		
							    include 'database.php';
							    global $db;

							    $c = $db->prepare("SELECT Nom FROM Utilisateur WHERE Nom = :Nom");
								$c->execute(['Nom' => $Nom],
											['Email'=>$Email]);
							    $result = $c->rowCount();
							    if ($result == 0) {
							    	$q = $db->prepare("INSERT INTO Utilisateur(idUtilisateur,Nom,PassWord,Email) VALUES(NULL,:Nom,:PassWord,:Email)");
							    $q->execute([
							    	'Nom' => $Nom,
							    	'PassWord' => $PassWord,
                                    'Email' => $Email,
                                    
								]);
								$_SESSION['Nom']= $result['Nom'];
                                echo "Le compte a été crée ";
                                header('location:acceuil.php');
							    }else{
							    	echo "le compte existe déja ! ";
							    }
										}else{
											?><h1 class="article">le mot de pass n'est pas identique</h1><?php 
											}
                                   		}else{
                                   		?><h1 class="article">les champs ne sont pas remplies</h1><?php
                                   		}
                                   	}					
?>
	
</body>

</html>