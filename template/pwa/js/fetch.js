
fetch("http://localhost/Escape_Sorbonne/template/pwa/js/questions.json")
  .then(function(res) {
    return res.json();
  })
  .then(function(quiz){
	console.log(quiz)
  });
  