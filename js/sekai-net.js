// Wait for the DOM to load then run start
$(function(){

	

  $(".login-btn").click(function() {

    $("section").hide();
	$("main section:last-child").show();
  });
});