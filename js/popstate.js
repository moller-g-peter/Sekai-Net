$(function(){
	$("section[class*='backEnd']").hide();
// Start things up
	function start(){
		onPopAndStart();

		$(document).on("click","a",function(event){
			event.preventDefault(); // = return false beteende
			var thisHref = $(this).attr('href');

			showPage(thisHref);
			// Add the current "state/page" to our history
			history.pushState(null,null,thisHref);
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

	function showPage(href){
		console.log("BANANANANANANANANA");
        contactPHP(buildTopMenu);
		if (href == "login") {
			$("section[class*='frontEnd']").hide();
			$("section[class*='backEnd']").show();
			$(".clock").show();
		}

		$('.'+href).show();
			console.log("thisHref: ",href);
			
			// Show a section with an id corresponding
			// to the page name
			// $('section').hide();
			// $('section#'+pageName).show();
			// $('header .active').removeClass('active');
			// $('.'+pageName+"-button").addClass('active');
			// $('section').children().hide();
			// $('.'+pageName).show();
	}
});

