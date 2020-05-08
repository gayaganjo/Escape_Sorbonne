//gerer les déffilement des articles de chaque élement du codex 
var R2 = document.getElementById('R2');
function myFunction() {
	var dots = document.getElementById("dots");
	var moreText = document.getElementById("more");
	var btnText = document.getElementById("myBtn");
	
    for (i = 0; i <= 50; i++) {
        $('#art' + i).html( quiz.article[i]);
       
    }
	if ($('#dots'+i).hide()) {
	  dots.style.display = "inline";
	  btnText.innerHTML = "<img src=\'src/img/down.png\' class=\'plus'>"; 
	  moreText.style.display = "none";
	} else {
	  dots.style.display = "none";
	  btnText.innerHTML = "<img src=\'src/img/up.png' class=\'plus' >"; 
	  moreText.style.display = "inline";
	}
  }
//gerer le déblocage des élements du codex
  var isShown = localStorage.getItem('showit');
      var element=document.getElementById('element');
      var elem=0;
      if(isShown && isShown==2){
        elem++;
        element.append( "Tu a collecté  "+ elem + " élément historique sur 9" );
        document.getElementById('R1').style.display='none';
        
        }else{
          document.getElementById('R1').style.display='block';
        }