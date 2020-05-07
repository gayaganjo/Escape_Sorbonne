
var quiz = {};

quiz.question ={
	1:	"Pour commencer, nous devons savoir jusqu'où remonter, je propose de revenir en 2020 et de chercher sa date de fondation.<br> Pour cela nous devons retrouver le nom d'un de ses fondateurs.",
	2:	"Nous avons maintenant le nom d’un des fondateurs, il nous reste plus qu’à trouver la date de fondationde la Sorbonne.",
	3:	"La Sorbonne date donc du Moyen-Âge et nous pouvons supposer qu’elle ne ressemblait pas à celle de 2020 à laquelle nous sommes revenus. D’ailleurs, les tracés en double pointillé blanc situé au centre de la Cour d’Honneur correspondent à la chapelle primitive, mais si nous savions quand a-t-elle été détruite, nous pourrions sûrement daté une autre période de construction et retrouver les plans.",
	4:	"Le 5 décembre 1793, des révolutionnaires saccagèrent un tombeau qui se trouvait dans la nouvelle chapelle,n\ l'exhumèrent et décapitèrent son cadavre… à qui appartenait-il ?",
	5:	"Au XIXe siècle c’est le temps des grands travaux sous la Troisième République en Sorbonne.Qui réorganisa l’ensemble du système d’enseignement supérieur français, baptisé Université impériale ? ",
	6:	"La reconstruction des bâtiments du XVIIe siècle, trop exigus et incommodes, fut finalement réalisée sous l’impulsion de ? ",
	7:	"En 1906 une femme devient la première femme enseignante à la Sorbonne. De qui s’agit-il ?",
	8:	"En quelle année l’Université de Paris éclate-t-elle en 13 universités Parisiennes ?",
	9:	"En 2020, la Sorbonne est ?"
}
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
quiz.article = {
	1:"Son fondateur venait d’une commune française, située dans le département des Ardennes.",
	2:"Son nom se trouve au milieu de la cour d’honneur.",
	3:"Sur la plaque de la cour d’honneur il est indiqué que la chapelle a été édifiée en 1326, mais Robert de Sorbon est décédé en 1274. Notre mission ne va pas être simple car des erreurs se sont disséminés au fil du temps.",
	4:"C’est un célèbre cardinal qui fit la commande d’un nouvel édifice",
	5:"Rendons-nous dans le Hall des Amphithéâtres, l’un d’eux porte son nom.",
	6:"Il s’agit d’un des proviseurs de la Sorbonne.",
	7:"Il s’agit d’un empereur.",
	8:"Ça commença en 1806.",
	9:"Il s’agit d’un ministre de l’Instruction publique.",
	10:"Rendons-nous dans le Hall des Amphithéâtres, l’un d’eux porte son nom.",
	11:"C’est une scientifique.",
	12:"C’est dû à un mouvement contestataire.",
	13:"C’est une scientifique.",
	14:"C’est le siège du rectorat de l’académie Paris et de la Chancellerie des Universités de Paris."
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
	
	if($('.result').show()){
		
		for (i = 0; i <= 50; i++) {
			$('#indice' + i).hide();
		}
	}
	
	
	if (quiz.thisQ <= quiz.quizLength) {
		$('.q' + quiz.thisQ).show();
	} else {
		return window.location.assign("fin_promenade.html");

	}
	 

}

		for (i = 0; i <= 50; i++) {
			$('#art' + i).html( quiz.article[i]);
			$('#Que' + i).html(quiz.question[i]);
		}

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


	var borg = document.getElementById("borg");
    borg.pause();

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
		
		$('#hello2').show(); 
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
			borg.play();
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
		
