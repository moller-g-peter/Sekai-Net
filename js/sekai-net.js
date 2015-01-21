// Wait for the DOM to load then run start
$(function(){
	$("section[class^='backEnd']").hide();

  $(".login-btn").click(function() {

    $("section").hide();
	$("main section:last-child").show();
  });
});