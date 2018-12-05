
var counter = 0;
var timeleft = 0;

window.onload = function(){
	timeleft = document.getElementById("timeLimit").value;
	console.log(timeleft);
	setup();
};

function convertSeconds(s){
	var hou = Math.floor(s / 3600);
	var min = Math.floor(s / 60);
	var sec = s % 60;
	if(hou<10) hou = "0" + hou;
	if(min<10) min = "0" + min;
	if(sec<10) sec = "0" + sec;
	return hou + ":" + min + ":" + sec;
}
// Update the count down every 1 second
function setup(){
	document.getElementById("timer-main").innerHTML = convertSeconds(timeleft - counter);
	var interval = setInterval(timeIt,1000);
	function timeIt(){
		counter++;
		document.getElementById("timer-main").innerHTML = convertSeconds(timeleft - counter);
		if(counter==timeleft){
			clearInterval(interval);
			counter=0;
			window.location.assign("http://localhost:8080/ThiTracNghiem/exam-completed.jsp")
		}
	}
}