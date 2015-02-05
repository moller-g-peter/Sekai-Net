
$(function(){

 //  $(".login-btn").click(function() {
 //    $("section[class*='frontEnd']").hide();
 //    $("section[class*='backEnd']").show();
 //    $(".clock").show();

 //  // $("header section:last-child").show();
	// // $("main section:last-child").show();
 //  });

  //------------------------------------------------------------------------

  $(".inputField").submit(function() {
    menuName = $("#menuTitle_inputField").val();
    path = $("#url_inputField").val();

    console.log("path: ", path);

    var inputFieldData = {
      ":title" : $("#menu_inputField").val(),
      ":url" : path,
      ":body" : $("#menu_textArea").val()
    };

    insert_text_to_DB(inputFieldData);
        // console.log("what happens");
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
        save_menu_title();
      },
      error: function(data) {
        console.log("insert_text_to_DB error: ", data.responseText);
      }
    });
    return false;
  }

  //------------------------------------------------------------------------

  function save_menu_title() {
    var insertToMenuLinks = {
      ":menuTitle" : menuName,
      ":url" : path
    };

    console.log("insertToMenuLinks: ", insertToMenuLinks);

    $.ajax({
      url: "php/save_menu_title.php",
      type: "post",
      dataType: "json",
      data: {
        "insert_text_to_menu_links" : insertToMenuLinks
      },
      success: function(data) {
        console.log("save_menu_title success: ", data);
      },
      error: function(data) {
        console.log("save_menu_title error: ", data.responseText);
      }
    });
    return false;
  }

  //------------------------------------------------------------------------

  function getMenuLinks(menu_name) {
    $.ajax({
      url: "php/get_menu_content.php",
      type: "get",
      dataType: "json",
      data: {
        //menu_name must be provided
        "menu_name": menu_name
      },
      //on success, execute listAllMenuLinks() function in helpers.js
      // success: listMenuLinks,
      error: function(data) {
        console.log("getMenuLinks error: ", data.responseText);
      }
    });
  }

});