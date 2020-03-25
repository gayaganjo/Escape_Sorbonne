var quiz = {};

// EDIT THIS.
// The answers should be IDENTICAL to the correct answer as you coded it in the HTML. This means punctuation and all. 
// var img=document.createElement("img");
// img.src = "icon.png";
// var src = document.getElementById("x");
// src.appendChild("img");
quiz.answers = {
	1: "darkvador",
	2: '"You know you love him, and so does he!"',
	3: "Red",
	4: "Anakin",
	5: "Red"
	// if you need to add more answers, do it using this format. DO NOT include a comma after the last one.
}
quiz.details = {
	1: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"',
	2: 'florem epssssum ',
	3: '<img src="icon.png"> ',
	4: 'gzzzzzzgt ',
	5: 'la vache qui rit '
}

// STOP EDITING

quiz.thisQ = 1;
quiz.quizLength = $('.question').length;
$('.detail').length = $('.question').length;
quiz.score = 0;

quiz.init = function() {
	$('.question').hide();
	$('.answers').hide();
	$('.details').hide();
	$('.q1').show();
}

quiz.engine = function(e) {
	response = e.target.innerHTML;

	if (response == quiz.answers[quiz.thisQ]) {
		$('.result').html("Correct. ");
		quiz.score++;
	} else {
		$('.result').html("Nope. The right answer is " + quiz.answers[quiz.thisQ] + ". ");
		// $('.detail').html("<br> detail : " + quiz.details[quiz.thisQ] );
		$('.d1').show();
	}
	$('.result').append("Your score is " + quiz.score + "/" + quiz.thisQ + ".");
	 $('.detail').append("<br> detail : " + quiz.details[quiz.thisQ] );
	$('.q'+quiz.thisQ).hide();
	quiz.thisQ++;
	$('.details').show();
	if (quiz.thisQ <= quiz.quizLength) {
		 
		// $('.detail'- quiz.details[quiz.thisQ]).hide();
		for (i=0; i<= this.quizLength; i++){

			$('.d' + i).html("<br> Winna: " + quiz.details[i]);	
		}
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
	// $('.detail').hide();
});
$('button').on('click',function(e) {
	$('.answers').hide();
	// $('.d'+(quiz.thisQ - 1)).hide();
	$('.q'+quiz.thisQ).show();
	
});