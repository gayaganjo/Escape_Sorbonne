
var quiz = {};

// EDIT THIS.
// The answers should be IDENTICAL to the correct answer as you coded it in the HTML. This means punctuation and all. 

quiz.answers = {
	1: 'Robert de Sorbon',
	2: '1253',
	3: '1635',
	4: "Cardinal de Richelieu",
	5: "Napoléon Bonaparte",
	6: "Jules Ferry",
	7: 'Marie Curie',
	8: '1968',
	9: 'Un bâtiment'
}

// STOP EDITING

quiz.thisQ = 1;
quiz.quizLength = $('.question').length;
quiz.score = 0;


quiz.init = function() {
	$('.question').hide();
	$('.answers').hide();
	$('.q1').show();
	$('.article').hide();
	$('.result').hide();
}
var timeReponse=0;
quiz.engine = function(e) {
	response = e.target.innerHTML;
	timeReponse++;

	if (response == quiz.answers[quiz.thisQ]) {
		$('.result').show();
		$('.result').html("Bravo! </br> ");
		
		$('.q'+quiz.thisQ).hide();
		// $('.article').show();
		quiz.score++;
		quiz.thisQ++;
		// $('.questions').hide();
		$('.result').append( "Tu a collecté  "+ quiz.score + " élément historique sur " + quiz.quizLength + ", retrouve-les dans ton codex");
		
	} else {
		$('.result').show();
		if(timeReponse%2==0){
			$('.q'+quiz.thisQ).hide();
		quiz.thisQ++;
		$('.result').html("Faux! mais tu a débloqué un element dans le codex.</br> ");
		}else{
			
		$('.result').html("Faux! encore un essai. j'ai des indices pour t'aider</br> ");
			// $('#hello2').show();
			setTimeout(function(){ $('#hello2').hide(); }, 2000);
		}
	}
	
	
	
	if (quiz.thisQ <= quiz.quizLength) {
		$('.q' + quiz.thisQ).show();
	} else {
		$('.answers').show();
		for (i = 0; i <= quiz.quizLength; i++) {
			$('.a' + i).html("A: " + quiz.answers[i]);
		}
	}
	 

}

// make it go
$('document').ready(function() {
	quiz.init();
});

$('li').on('click', function(e) {
	quiz.engine(e);
});
function myFunction() {
	var dots = document.getElementById("dots");
	var moreText = document.getElementById("more");
	var btnText = document.getElementById("myBtn");
	

	if (dots.style.display === "none") {
	  dots.style.display = "inline";
	  btnText.innerHTML = "<img src=\'src/img/down.png\' class=\'plus'>"; 
	  moreText.style.display = "none";
	} else {
	  dots.style.display = "none";
	  btnText.innerHTML = "<img src=\'src/img/up.png' class=\'plus' >"; 
	  moreText.style.display = "inline";
	}
  }
	//   const codex2= document.getElementById('codex2');
	//   const code2= document.getElementById('code2');
	
	//   codex2.style.display='none';
	  
	//   code2.ondbclick=function(){
	// 	codex2.style.display='block';
	//   }
	// var codex02=document.getElementById("codex02");
	
	// function cdx1(){
	// 	var codex02=document.getElementById("codex02");
		
	// 		codex02.style.display="none";
		
			
	// }


	
	var result=document.getElementById("result");
	var robot=document.getElementById("robot");
	var commence=document.getElementById("commence");
	$('#indice1').hide();
	$('#indice2').hide();
	$('#indice3').hide();
	$('#indice4').hide();
	$('#indice5').hide();
	$('#indice6').hide();
	$('#indice7').hide();
	$('#indice8').hide();
	$('#indice9').hide();
	$('#indice10').hide();
	$('#indice11').hide();
	$('#indice12').hide();
	$('#indice13').hide();
	$('#indice14').hide();
	$('#hello1').hide();
	setTimeout(function(){ $('#hello').hide(); }, 2000);
	setTimeout(function(){ $('#hello1').show(); }, 3000);
	setTimeout(function(){ $('#hello1').hide(); }, 6000);
	setTimeout(function(){ $('#commence').hide();},7000);
	$('#hello2').hide();
	function bigImg(robot) {
		
		// $('#hello2').show(); 
		$('#hello').hide(); 
		$('#hello1').hide(); 
	  }
	  
	function normalImg(robot) {
		// robot.style.height = "32px";
		// robot.style.width = "32px";
		$('#hello2').hide(); 
	  }
	
	function indice_of(indice1){
		indice1.style.display="none";
		questions.style.display="block";
	}
	function indice_of(indice2){
		indice2.style.display="none";
		questions.style.display="block";
	}
	
	
	var timesClicked = 0;
		function indice(robot){
			$('.result').hide();
			if(quiz.thisQ==1){
				timesClicked++;
				if (timesClicked%2==0){
					$('#indice1').hide();
					$('#indice2').show();
				}else{
					$('#indice2').hide(); 
					$('#indice1').show(); 
				}
			}
			if(quiz.thisQ ==2){
				$('#indice3').show();
			}
			if(quiz.thisQ ==3){
				$('#indice4').show();
			}
			if(quiz.thisQ==4){
				timesClicked++;
				if (timesClicked%2==0){
					$('#indice5').hide();
					$('#indice6').show();
				}else{
					$('#indice6').hide();
					$('#indice5').show();
				}
			}
			if(quiz.thisQ==5){
				timesClicked++;
				if (timesClicked%2==0){
					$('#indice7').hide();
					$('#indice8').show();
				}else{
					$('#indice8').hide();
					$('#indice7').show();
				}
			}
			if(quiz.thisQ ==6){
				$('#indice9').show();
			}
			if(quiz.thisQ==7){
				timesClicked++;
				if (timesClicked%2==0){
					$('#indice10').hide();
					$('#indice11').show();
				}else{
					$('#indice11').hide();
					$('#indice10').show();
				}
			}
			if(quiz.thisQ==8){
				timesClicked++;
				if (timesClicked%2==0){
					$('#indice12').hide();
					$('#indice13').show();
				}else{
					$('#indice13').hide();
					$('#indice12').show();
				}
			}
			if(quiz.thisQ ==9){
				$('#indice14').show();
			}
		}
		
