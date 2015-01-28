
$(function(){
	$("section[class*='backEnd']").hide();

  $(".login-btn").click(function() {
    $("section[class*='frontEnd']").hide();
    $("section[class*='backEnd']").show();
    $(".clock").show();

  // $("header section:last-child").show();
	// $("main section:last-child").show();
  });

  //------------------------------------------------------------------------

  $(".inputField").submit(function() {

    var inputFieldData = {
      ":title" : $("#menu_inputField").val(),
      ":url" : $("#url_inputField").val(),
      ":body" : $("#menu_textArea").val()
    };

    insert_text_to_DB(inputFieldData);
        console.log("what happens");
    this.reset();

    return false;
  });

  //------------------------------------------------------------------------

  function insert_text_to_DB(inputFieldData) {
    $.ajax({
      url: "php/save_content.php",
      type: "post",
      dataType: "json",
      data: {
        "page_data" : inputFieldData
      },
      success: function(data) {
        console.log("insert_text_to_DB success: ", data);
      },
      error: function(data) {
        console.log("insert_text_to_DB error: ", data.responseText);
      }
    });
    return false;
  }
});