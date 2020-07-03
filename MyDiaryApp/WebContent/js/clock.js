function startTime() {
	var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
	var today = new Date();
	
	var day = days[today.getDay()];
	var date = today.getDate();
	var month = today.getMonth();
	var year = today.getFullYear();
	var hour = today.getHours();
	var minute = today.getMinutes();
	var second = today.getSeconds();
	
	date = checkTime(date);
	hour = checkTime(hour);
	minute = checkTime(minute);
	second = checkTime(second);
	document.getElementById("clock").innerHTML = day + ", " + date + "/" + month + "/" + year + " " + hour + ":" + minute;
	
	var t = setTimeout(startTime, 500);
}
function checkTime(t) {
	if (t < 10) {t = "0" + t};  // add zero in front of numbers < 10
	return t;
}