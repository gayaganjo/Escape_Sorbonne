<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Quiz</title>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	
	
	<div class="quiz">
		<header>
			<h1>Escape Sorbonne</h1>
			<h3>Filled with sample Star Wars expanded universe questions</h3>
		</header>
		<section class="questions">
			<p class="result">Click on an answer to start the quiz.</p>
			<div class="question q1">
			
				<?php      
				include 'database.php';
  			  global $db;
 
  				$v = $db-> query("SELECT DISTINCT * FROM Questions "); 
   			 while ($result = $v->fetch()) {
   			   $_SESSION['idQuestions']= $result['idQuestions'];
   			   $_SESSION['text']= $result['text'];
        
				if($_SESSION['idQuestions']== 1){

				
       		 ?>
				<p><?php echo $_SESSION['text'];} ?></p>
				

				<ul>
					<li>Mon Mothma</li>
					<li>darkvador</li>	
					<li>Callista</li>
					<li>Winter</li>
				</ul>
				<audio src="src/audio/81683" style="display:none;" autoplay>
			</div>
			<div class="question q2">
				<p><?php if($_SESSION['idQuestions']== 2){ echo $_SESSION['text'];} }?></p>
				<ul>
					<li>"Wookiees love him, women love him!"</li>
					<li>"He's got a winning smile!"</li>
					<li>"You know you love him, and so does he!"</li>
					<li>"He's every princess's dream!"</li>
				</ul>
			</div>
			<div class="question q3">
				<p>Grand Admiral Thrawn's eyes are what colour?</p>
				<ul>
					<li>Red</li>
					<li>Green</li>
					<li>Yellow</li>
					<li>Black</li>
				</ul>
			</div>
			<div class="question q4">
				<p>Leia and Han get married and have twins, Jacen and Jaina, as well as another son named after an original trilogy character. Who's his namesake?</p>
				<ul>
					<li>Lando</li>
					<li>Ben</li>
					<li>Wedge</li>
					<li>Anakin</li>
				</ul>
			</div>
			<div class="question q5">
				<p>In <em>Darth Plagueis</em>, we meet Palpatine as a student. What colour is his hair?</p>
				<ul>
					<li>Blonde</li>
					<li>Red</li>
					<li>Brown</li>
					<li>Black</li>
				</ul>
			</div>
		</section>
		<section class="answers">
			<div class="answer">
				<p class="q">Luke got married in the expanded universe. What's Mrs. Skywalker's name?</p>
				<p class="a1"></p>
			</div>
			<div class="answer">
				<p class="q">In <em>The Courtship of Princess Leia</em>, C-3PO tries to sell Leia on Han with a song called "Han Solo, He's A Man, Solo!" (really). Which of these is not a real lyric?</p>
				<p class="a2"></p>
			</div>
			<div class="answer">
				<p class="q">Grand Admiral Thrawn's eyes are what colour?</p>
				<p class="a3"></p>
			</div>
			<div class="answer">
				<p class="q">Leia and Han get married and have twins, Jacen and Jaina, as well as another son named after an original trilogy character. Who's his namesake?</p>
				<p class="a4"></p>
			</div>
			<div class="answer">
				<p class="q">In <em>Darth Plagueis</em>, we meet Palpatine as a student. What colour is his hair?</p>
				<p class="a5"></p>
			</div>
		</section>
		<section class="details">
			<div class="detail">
				<p class="d1"></p>
			</div>
			<div class="detail">
				<p class="d2"></p>
			</div>
			<div class="detail d3">
				<p>voici un petit resumé de la question precedente</p>
			</div>
			<div class="detail d4">
				<p>voici un petit resumé de la question precedente</p>
			</div>
			<div class="detail d5">
				<p>voici un petit resumé de la question precedente</p>
			</div>
			<button  class="button">suivant</button>
		</section>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="js/quiz.js"></script>
</body>
</html>