var monjson=false;
fetch("https://gayaganjo.github.io/Escape_Sorbonne/template/pwa/js/questions.json")
  .then(function(res) {
   return res.json();
  })
  .then(function(data){
	console.log(data)
  });
  
  const test=document.getElementById('test');
   
  test.append(quiz.answers[0]);