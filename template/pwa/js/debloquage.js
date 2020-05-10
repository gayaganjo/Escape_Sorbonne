
var shown=1;
function rep1()
{
if(shown===1){
    localStorage.setItem('showit', 2);
    shown=2;
    }
    else{
        localStorage.setItem('showit', 1);
        shown=1;
    }
}
