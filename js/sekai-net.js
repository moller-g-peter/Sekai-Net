
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
        "page_data" : inputFieldData // "page_data" är referens till "save_content.php"
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

    // console.log("insertToMenuLinks: ", insertToMenuLinks);

    $.ajax({
      url: "php/save_menu_title.php",
      type: "post",
      dataType: "json",
      data: {
        "insert_text_to_menu_links" : insertToMenuLinks
      },
      success: function(data) {
        getAllLinks(buildAdminSelect);
        console.log("save_menu_title success: ", data);
      },
      error: function(data) {
        console.log("save_menu_title error: ", data.responseText);
      }
    });
    return false;
  }

  //------------------------------------------------------------------------

  function getAllLinks(successFunction) {
    $.ajax({
      url: "php/get_menu_content.php",
      type: "get",
      dataType: "json",
      success: successFunction,
      error: function(data) {
        console.log("getAllLinks error: ", data.responseText);
      }
    });
    return false;
  }

  //------------------------------------------------------------------------

  function buildAdminSelect(menuLinksData){
    // console.log("menuLinksData :", menuLinksData);
    var menuTree = buildMenuTree(menuLinksData);
        console.log("menuTree :", menuTree);

  }

  //------------------------------------------------------------------------

  function buildMenuTree(menuLinksData){
    var menuTree = [];

    var hashMap = {};

    menuLinksData.forEach(function(oneInArray) {
  

      oneInArray.children = []; // ge alla länkar en meny
    
      // i denna if sats som vi lägger till topnivå
      if (!oneInArray.plid){
        menuTree.push(oneInArray); //du lägger oneInArray i menuTree med hjälp av .push
      }

      hashMap["#" + oneInArray.mlid] = oneInArray;
    });

    for(var i in hashMap){
      var oneLink = hashMap[i];

      // här lägger vi till undernivå
      if (oneLink.plid){
        hashMap["#" + oneLink.plid].children.push(oneLink);
      }
    }

    console.log("menuTree :", menuTree);
    console.log("hashMap :", hashMap);

    return menuTree;
  }



// loop genom all menylinkdata, ge alla menylänkar en tom array (children), if not plid push to menutree



   //------------------------------------------------------------------------

});