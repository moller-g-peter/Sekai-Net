// Wait for the DOM to load then run start
$(function(){
	// $("section[class*='backEnd']").hide();
	// $(".back").hide();
	console.log( $(".frontEnd"));
  $(".login-btn").click(function() {
	$("section[class*='frontEnd']").hide();
	$("section[class*='backEnd']").show();

    // $(".front").hide();
    // $(".back").show();


 //    $("header section:last-child").show();
	// $("main section:last-child").show();
  });
});