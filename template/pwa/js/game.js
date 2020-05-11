const question = document.getElementById('question');
const choices = Array.from(document.getElementsByClassName('choice-text'));
const progressText = document.getElementById('progressText');
const scoreText = document.getElementById('score');
const progressBarFull = document.getElementById('progressBarFull');
const loader = document.getElementById('loader');
const game = document.getElementById('game');
const article = document.getElementById('article');
let currentQuestion = {};
let acceptingAnswers = false;
let score = 0;
let questionCounter = 0;
let availableQuestions = [];
let togg = document.getElementById("togg");
article.style.display="none";
var hello=document.getElementById("indice1");
var art1=document.getElementById("art1");
var robot=document.getElementById("robot");
var timesClicked = 0;
indice1.style.display="none";
let questions = [];
fetch("https://gayaganjo.github.io/Escape_Sorbonne/template/pwa/js/questionss.json")
  .then(res => {
    return res.json();
  })
  .then(loadedQuestions => {
    questions = loadedQuestions.results.map(loadedQuestion => {
      const formattedQuestion = {question: loadedQuestion.question };
      const indiceQuestion = [...loadedQuestion.indice];
      formattedQuestion.indices= Math.floor(Math.random() * 3) + 1;
      indiceQuestion.splice(formattedQuestion.indices - 1, 0, loadedQuestion.indice);
      indiceQuestion.forEach((indic, index) => {
        formattedQuestion["indic" + (index + 1)] = indic;
      });
      
      const answerChoices = [...loadedQuestion.incorrect_answers];
      
      formattedQuestion.answer = Math.floor(Math.random() * 3) + 1;
      answerChoices.splice(formattedQuestion.answer - 1, 0, loadedQuestion.correct_answer);
      answerChoices.forEach((choice, index) => {
        formattedQuestion["choice" + (index + 1)] = choice;
      });
      return formattedQuestion;
    });
    startGame();
  })
  .catch(err => {
    console.error(err);
  });
const CORRECT_BONUS = 1;
const MAX_QUESTIONS = 5;

startGame = () => {
  questionCounter = 0;
  score = 0;
  availableQuestions = [...questions];
  
  getNewQuestion();
  game.classList.remove("hidden");
  loader.classList.add("hidden");
};
togg.addEventListener("click", () => {
  game.style.display="block";
  article.style.display = "none"
})
getNewQuestion = () => {
  if(availableQuestions.length === 0 || questionCounter > MAX_QUESTIONS) {
    localStorage.setItem("mostRecentScore", score);
    return window.location.assign("fin_mission.html");
  }
  
  questionCounter++;
  progressText.innerHTML = "Question: " + questionCounter + "/" + MAX_QUESTIONS;
  progressBarFull.style.width = `${(questionCounter / MAX_QUESTIONS) * 100}%`;
  const questionIndex = Math.floor(Math.random() * availableQuestions.length);
  currentQuestion = availableQuestions[questionIndex];
  question.innerHTML = currentQuestion.question;
  
  
   robot.onclick= function(){
    timesClicked++;
    if(timesClicked%2==0){
      if(currentQuestion['indic2'].length==1){
        indice1.style.display="block";
        art1.innerHTML=currentQuestion['indic1'] ;
      }else{
      indice1.style.display="block";
      art1.innerHTML=currentQuestion['indic2'] ;
      console.log(currentQuestion.indic2);
    }
    }else{
      if(currentQuestion['indic1'].length==1){
        art1.innerHTML=currentQuestion['indic2'] ;
        console.log(currentQuestion.indic1);
      }else{
      indice1.style.display="block";
      art1.innerHTML=currentQuestion['indic1'] ;
      console.log(currentQuestion.indic1);
    }
    }
  };
  indice1.onclick =function(){
    indice1.style.display="none";
  }
  
  

  choices.forEach(choice => {
    const number = choice.dataset['number'];
    choice.innerHTML = currentQuestion['choice' + number];
  });
  availableQuestions.splice(questionIndex, 1);
  acceptingAnswers = true;
}

choices.forEach(choice => {
  choice.addEventListener("click", e => {
 
    if (!acceptingAnswers)
      return;
    acceptingAnswers = false;
    const selectedChoice = e.target;
    const selectedAnswer = selectedChoice.dataset["number"];
    const classToApply = selectedAnswer == currentQuestion.answer ? "correct" : "incorrect";
    if(currentQuestion.num==2){
      alert("hello !");
    }
    if(classToApply == "correct") {
      
      incrementScore(CORRECT_BONUS);
      
    }
    selectedChoice.parentElement.classList.add(classToApply);
    setTimeout(() => {
      selectedChoice.parentElement.classList.remove(classToApply);
      getNewQuestion();
    }, 1000);
    
    
  });
  // if(acceptingAnswers){
  //   game.style.display="none";
  //   article.style.display = "block";
  // }
});

incrementScore = num => {
  score += num;
  scoreText.innerHTML = score;
}

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
    // const codex2= document.getElementById('codex2');
    // const code2= document.getElementById('code2');
    // codex2.style.display='none';
    // // code2.onclick=function(){
    // //   codex2.style.display='block';
    // // }
    // code2.ondbclick=function(){
    //   codex2.style.display='block';
    // }

   
// var rectangle = $("#Rectangle");
// var speechBubble = $("#SpeechBubble");
// rectangle.hover(
//   function() {
//     speechBubble.css({
//       "animation-name": "expand-bounce",
//       "animation-duration": "0.25s"
//     });
//   },
//   function() {
//     speechBubble.css({
//       "animation-name": "shrink",
//       "animation-duration": "0.1s"
//     });
//   }
// );
    // var result=document.getElementById("result");
    

  
    var hello1=document.getElementById("hello1");
    var hello2=document.getElementById("hello2");
	// setTimeout(function(){ hello.style.display="none"; }, 1000);
	// setTimeout(function(){ hello1.style.display="block"; }, 2000);
	// setTimeout(function(){hello1.style.display="none"; }, 6000);

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
	
	