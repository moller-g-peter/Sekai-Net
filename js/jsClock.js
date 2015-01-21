$(renderTime);

// Klocka i realtid
	function renderTime() {
		var currentTime = new Date();
		var diem = "AM";

		var dt = currentTime.getDate();
		var yr = currentTime.getFullYear();
		var mo = currentTime.getMonth();
		var dy = currentTime.getDay();
		var h = currentTime.getHours();
		var m = currentTime.getMinutes();
		var s = currentTime.getSeconds();

		var daysArray = [
			"Sun.",
			"Mon.",
			"Tue.",
			"Wed.",
			"Thu.",
			"Fri.",
			"Sat."
			];

		var monthsArray = [
			"January",
			"February",
			"March",
			"April",
			"May",
			"June",
			"July",
			"August",
			"September",
			"October",
			"November",
			"December"
			];

		// if (mo < 10){
		// 	mo = "0" + mo;
		// }

		if (dt < 10){
			dt = "0" + dt;
		}
		if (yr < 1000){
			yr += 1900;
		}
		if (h === 0){
			h = 12;
		}
		else if (h > 12){
			h = h - 12;
			diem = "PM";
		}
		if(h < 10){
			h = "0" + h;
		}
		if(m < 10){
			m = "0" + m;
		}
		if(s < 10){
			s = "0" + s;
		}

		var myClock = $("#clockDisplay");
		myClock.html("<p>" + daysArray[dy] + " " + monthsArray[mo] + " " + dt + ", " + yr + " " + "&nbsp;" + " " + h + ":" + m + ":" + s + " " + diem + "<p>");
		// console.log(daysArray[dy] + " " + monthsArray[mo] + " " + dt + ", " + yr + " " + "-" + " " + h + ":" + m + ":" + s + " " + diem);
		setTimeout(renderTime, 1000);
	}
	// renderTime();