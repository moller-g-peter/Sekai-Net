$(function(){
	$("section[class*='backEnd']").hide();
// Start things up
	function start(){
		onPopAndStart();

		$(document).on("click","a",function(event){
			event.preventDefault(); // = return false beteende
			var thisHref = $(this).attr('href');

			goToUrl(thisHref);
		});

		// Add a pop state listener
		// (listen to forward/backward buttons in the browser)
		addEventListener("popstate",onPopAndStart);

		// Run this function on popstate and initial load
		function onPopAndStart(){
			//alert("The popstate event is triggered!");

			// Read our url and extract the page name
			// the characters after the last slash
			var l = location.href;
			var pageName = l.substring(l.lastIndexOf("/")+1);
			// if no pageName set pageName to "start"
			pageName = pageName || "home";

			showPage(pageName);

		}
	}
	start();
});


function goToUrl(thisHref) {
	showPage(thisHref);
	// Add the current "state/page" to our history
	history.pushState(null,null,thisHref);
}


function showPage(href){
	// console.log("BANANANANANANANANA");
    contactPHP(buildTopMenu);
	if (href == "login") {
		// $("section[class*='frontEnd']").hide();
		$("section[class*='backEnd']").show();
		// $(".clock").show();
		contactPHP(buildSelectMenu);
	}	else if (href != "login") {

		$.ajax ({
			url:"php/getPage.php",
			type: "get",
			dataType:"json",
			data: {
				"get_page" : href
			},
			success: function(data){
				console.log("showPage:", data);

				$(".page").html("");
				$(".page").append("<article class='pageContent'/>");
				$(".page").show();

				$(".pageContent").append('<div class="panel panel-default"><div class="panel-heading"><h1 class="panel-title">' + data[0]["title"] + '</h1></div>' + '<div class="panel-body"><p>' + data[0]["body"] + '</p>'+'<img src="img/'+data[0]["img_id"][0]["path"]+'" class="img-responsive">'+'</div></div>');

			},
			error: function(data){
				console.log("showPage error:", data);
			}
		});

		pageName = "page";
	}

	// $('.'+href).show();
		console.log("thisHref: ",href);
}
