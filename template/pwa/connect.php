
<?php

if(isset($_POST['submit']))
{                

  $Nom=$_POST['Nom'];
  $passwordUser=$_POST['passwordUser'];
                               
                        if(!empty($Nom) && !empty($passwordUser)){ 
                                // insertion de donnée 
                                $sql='SELECT * FROM Utilisateur WHERE Nom = "'.$Nom.'"';
                                $req=mysqli_query($con,$sql) or die ('Erreur SQL!<br>'.$sql.'<br>'.mysqli_error($con));
                                
 		                        //  $result = $sql->fetch();
                                 if($req == true)
                                 {
                                         $_SESSION['Nom']= $result['Nom'];
                                         
                                    header('location:index1.php');
                                         //le compte existe bien
                                 }
                                 else
                                 {
                                         echo "Le compte portant le nom " . $Nom . "n'existe pas";
                                 }
  }
}
?>