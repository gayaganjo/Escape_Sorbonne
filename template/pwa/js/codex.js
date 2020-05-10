//gerer les déffilement des articles de chaque élement du codex 
function myFunction() {
	var dots = document.getElementById("dots");
	var moreText = document.getElementById("more1");
	var btnText = document.getElementById("Btn1");
	

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
  function article2() {
    var dots = document.getElementById("dots2");
    var moreText = document.getElementById("more2");
    var btnText = document.getElementById("Btn2");
    
  
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
    function article3() {
      var dots = document.getElementById("dots3");
      var moreText = document.getElementById("more3");
      var btnText = document.getElementById("Btn3");
      
    
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
      function article4() {
        var dots = document.getElementById("dots4");
        var moreText = document.getElementById("more4");
        var btnText = document.getElementById("Btn4");
        
      
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
        function article5() {
          var dots = document.getElementById("dots5");
          var moreText = document.getElementById("more5");
          var btnText = document.getElementById("Btn5");
          
        
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
          function article6() {
            var dots = document.getElementById("dots6");
            var moreText = document.getElementById("more6");
            var btnText = document.getElementById("Btn6");
            
          
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
            function article7() {
              var dots = document.getElementById("dots7");
              var moreText = document.getElementById("more7");
              var btnText = document.getElementById("Btn7");
              
            
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
              function article8() {
                var dots = document.getElementById("dots8");
                var moreText = document.getElementById("more8");
                var btnText = document.getElementById("Btn8");
                
              
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
                function article9() {
                  var dots = document.getElementById("dots9");
                  var moreText = document.getElementById("more9");
                  var btnText = document.getElementById("Btn9");
                  
                
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

  //                                           //
 //  gerer le déblocage des élements du codex //
//                                           //

for (i = 0; i <= 50; i++) {
  $('#lock' + i).hide();
}

var rep1 = localStorage.getItem('rep1');
var rep2 = localStorage.getItem('rep2');
var rep3 = localStorage.getItem('rep3');
var rep4 = localStorage.getItem('rep4');
var rep5 = localStorage.getItem('rep5');
var rep6 = localStorage.getItem('rep6');
var rep7 = localStorage.getItem('rep7');
var rep8 = localStorage.getItem('rep8');
var rep9 = localStorage.getItem('rep9');

      var element=document.getElementById('element');
      var elem=0;
      if(rep1 && rep1==2){
        elem++;
        $('#element').html( "Tu a collecté  "+ elem + " élément historique sur 9" );
        $('#Q1').hide();
        $('#lock1').show();
        }else{
          // document.getElementById('R1').style.display='block';
        }

        if(rep2 && rep2==2){
          elem++;
          $('#element').html( "Tu a collecté  "+ elem + " éléments historiques sur 9" );
          $('#Q2').hide();
          $('#lock2').show();          
          }else{
            // document.getElementById('R1').style.display='block';
          }
         
          if(rep3 && rep3==2){
            elem++;
            $('#element').html( "Tu a collecté  "+ elem + " éléments historiques sur 9" );
            $('#Q3').hide();
            $('#lock3').show();            
            }else{
              // document.getElementById('R1').style.display='block';
            }
         
            if(rep4 && rep4==2){
              elem++;
              $('#element').html( "Tu a collecté  "+ elem + " éléments historiques sur 9" );
              $('#Q4').hide();
              $('#lock4').show();              
              }else{
                // document.getElementById('R1').style.display='block';
              }
            
              if(rep5 && rep5==2){
                elem++;
                $('#element').html( "Tu a collecté  "+ elem + " éléments historiques sur 9" );
                $('#Q5').hide();
                $('#lock5').show();                
                }else{
                  // document.getElementById('R1').style.display='block';
                }
              
                if(rep6 && rep6==2){
                  elem++;
                  $('#element').html( "Tu a collecté  "+ elem + " éléments historiques sur 9" );
                  $('#Q6').hide();
                  $('#lock6').show();                  
                  }else{
                    // document.getElementById('R1').style.display='block';
                  }
               
                  if(rep7 && rep7==2){
                    elem++;
                    $('#element').html( "Tu a collecté  "+ elem + " éléments historiques sur 9" );
                    $('#Q7').hide();
                    $('#lock7').show();                    
                    }else{
                      // document.getElementById('R1').style.display='block';
                    }


                    if(rep8 && rep8==2){
                      elem++;
                      $('#element').html( "Tu a collecté  "+ elem + " éléments historiques sur 9" );
                      $('#Q8').hide();
                      $('#lock8').show();                      
                      }else{
                        // document.getElementById('R1').style.display='block';
                      }
                      if(rep9 && rep9==2){
                        elem++;
                        $('#element').html( "Tu a collecté  "+ elem + " éléments historiques sur 9" );
                        $('#Q9').hide();
                        $('#lock9').show();                        
                        }else{
                          // document.getElementById('R1').style.display='block';
                        }

        function back(){
          
         window.history.back();     
        
        }