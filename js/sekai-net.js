// Wait for the DOM to load then run start



$(function(){
	$("section[class*='backEnd']").hide();
	// console.log( $(".frontEnd"));

  $(".login-btn").click(function() {
	$("section[class*='frontEnd']").hide();
	$("section[class*='backEnd']").show();
	$(".clock").show();

 //    $("header section:last-child").show();
	// $("main section:last-child").show();
  });

  $(".inputField").submit(function() {
    //prepare adminFormData to be sent with AJAX
    var inputFieldData = {
      ":title" : $(this).find("#menu_inputField").val(),
      ":body" : $(this).find("#pages_inputField").val(),
      ":path" : $(this).find("#url_inputField").val()
      //":user_id" : 1 //this has been moved to PHP
    };

    //send adminFormData with AJAX to DB
    insertNewPage(inputFieldData);

    //empty the form once we're done with the information in it
    this.reset(); //.reset() is a JS function, NOT a jQuery function... :D

    //return false to prevent page reload on form submit
    return false;
  });

  

  //function to insert a new page into the DB
function insertNewPage(adminFormData) {
  $.ajax({
    url: "php/save_content.php",
    type: "post",
    dataType: "json",
    data: {
      //this request must have data to get through the 
      //if-statement in save_content.php
      "page_data" : adminFormData
    },
    success: function(data) {
      console.log("insertNewPage success: ", data);
      //on success, goTo() the contentList url
      goTo("content-list");
    },
    error: function(data) {
      console.log("insertNewPage error: ", data);
    }
  });
}



});