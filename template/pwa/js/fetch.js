var monjson=false;
fetch("https://gayaganjo.github.io/Escape_Sorbonne/template/data/itemsjoueur.json")
  .then(res => {
   return res.json();
  })
  .then(function(data){
	console.log(data)
  });
  
