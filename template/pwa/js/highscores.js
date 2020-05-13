const highScoresList = document.getElementById('highScoresList');
const highScores = JSON.parse(localStorage.getItem("highScores")) || [];

console.log(highScores);

var rang =0;
highScoresList.innerHTML = highScores.map(score => {
  rang++;
  return `<li class="quiz" style="font-size: 1.5rem;backdrop-filter: blur(0);line-height: 3rem;">#${rang}  |  ${score.name}  |  ${score.score}</li>`;
})
.join("");
