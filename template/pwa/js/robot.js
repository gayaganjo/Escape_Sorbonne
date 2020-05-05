    // var result=document.getElementById("result");
	var robot=document.getElementById("robot");
    var commence=document.getElementById("commence");
    var hello=document.getElementById("hello");
    var hello1=document.getElementById("hello1");
    var hello2=document.getElementById("hello2");
	setTimeout(function(){ hello.style.display="none"; }, 1000);
	setTimeout(function(){ hello1.style.display="block"; }, 2000);
	setTimeout(function(){hello1.style.display="none"; }, 6000);
	setTimeout(function(){ commence.style.display="none";},7000);
	hello2.style.display="none";
	function bigImg(robot) {
		
		hello2.show(); 
		hello.hide(); 
		hello1.hide(); 
	  }
	  
	function normalImg(robot) {
		// robot.style.height = "32px";
		// robot.style.width = "32px";
		hello2.hide(); 
	  }
	
	function indice_of(indice1){
		indice1.style.display="none";
		questions.style.display="block";
	}
	function indice_of(indice2){
		indice2.style.display="none";
		questions.style.display="block";
	}
	
	
	// var timesClicked = 0;
	// 	function indice(robot){
	// 		// $('.result').hide();
	// 		if(quiz.thisQ==1){
	// 			timesClicked++;
	// 			if (timesClicked%2==0){
	// 				$('#indice1').hide();
	// 				$('#indice2').show();
	// 			}else{
	// 				$('#indice2').hide(); 
	// 				$('#indice1').show(); 
	// 			}
	// 		}
	// 		if(quiz.thisQ ==2){
	// 			$('#indice3').show();
	// 		}
	// 		if(quiz.thisQ ==3){
	// 			$('#indice4').show();
	// 			$('.questions').hide();
	// 		}
	// 		if(quiz.thisQ==4){
	// 			timesClicked++;
	// 			if (timesClicked%2==0){
	// 				$('#indice5').hide();
	// 				$('#indice6').show();
	// 			}else{
	// 				$('#indice6').hide();
	// 				$('#indice5').show();
	// 			}
	// 		}
	// 		if(quiz.thisQ==5){
	// 			timesClicked++;
	// 			if (timesClicked%2==0){
	// 				$('#indice7').hide();
	// 				$('#indice8').show();
	// 			}else{
	// 				$('#indice8').hide();
	// 				$('#indice7').show();
	// 			}
	// 		}
	// 		if(quiz.thisQ ==6){
	// 			$('#indice9').show();
	// 		}
	// 		if(quiz.thisQ==7){
	// 			timesClicked++;
	// 			if (timesClicked%2==0){
	// 				$('#indice10').hide();
	// 				$('.questions').hide();
	// 				$('#indice11').show();
	// 			}else{
	// 				$('#indice11').hide();
	// 				$('#indice10').show();
	// 			}
	// 		}
	// 		if(quiz.thisQ==8){
	// 			timesClicked++;
	// 			if (timesClicked%2==0){
	// 				$('#indice12').hide();
	// 				$('#indice13').show();
	// 			}else{
	// 				$('#indice13').hide();
	// 				$('#indice12').show();
	// 			}
	// 		}
	// 		if(quiz.thisQ ==9){
	// 			$('#indice14').show();
	// 		}
	// 	}