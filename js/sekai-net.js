
// function contactPHP(successFunction) {
// console.log("contactPHP");
//   $.ajax({
//     url: "php/get_menu_content.php",
//     type: "get",
//     dataType: "json",
//     success: successFunction,
//     error: function(data) {
//       console.log("contactPHP error: ", data.responseText);
//     }
//   });
//   return false;
// } find("<li>").remove


  function buildTopMenu(menuLinksData){
    // console.log("menuLinksData :", menuLinksData);
    var menuTree = buildMenuTree(menuLinksData);
        console.log("menuTree I :", menuTree);
        $("ul.navbar-nav").find("li").remove();
    
    // var menuTreeToHtml = $("<ul>").addClass("topMenu");

    // $(".unorderedList").remove();
    // $("unorderedList").append(menuTree);
    // $(".frontEndHeaderBottom .navbar-nav").html("");
    for (var i = 0; i < menuTree.length; i++)
    {
      var topMenuListItem = $('<li>');

      topMenuListItem.append($("<a>")
        .attr("href", menuTree[i].path)
        .text(menuTree[i].title));
      // här kollas path som ligger i menutree 
      // console.log("menuTree[i].title :", menuTree[i].title);

      if (menuTree[i].children.length > 0)
      {
        topMenuListItem.addClass("dropdown");
        var ulLevelI = $('<ul class="dropdown-menu">');
        for (var j = 0; j < menuTree[i].children.length; j++)
        {
          var subMenuItemLevelI = $('<li>');

          subMenuItemLevelI.append($("<a>")
            .attr("href", menuTree[i].children[j].path)
            .text(menuTree[i].children[j].title));

          if (menuTree[i].children[j].length > 0)
          {
            subMenuItemLevelI.addClass("dropdown");
            var ulLevelII = $('<ul class="dropdown-menu">');
            for (var k = 0; k < menuTree[i].children[j].children.length; k++)
            {
              var subMenuItemLevelII = $('<li>');

              subMenuItemLevelII.append($("<a>")
                .attr("href", menuTree[i].children[j].children[k].path)
                .text(menuTree[i].children[j].children[k].title));

              ulLevelII.append(subMenuItemLevelII);
            }
            subMenuItemLevelI.append(ulLevelII);
          }
          ulLevelI.append(subMenuItemLevelI);
        }
        topMenuListItem.append(ulLevelI);
      }
      $(".frontEndHeaderBottom .navbar-nav").append(topMenuListItem);
      // $(".backEndHeaderBottom .navbar-nav").append(topMenuListItem);
    }
  }

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
        console.log("save_menu_title success: ", data);
      },
      error: function(data) {
        console.log("save_menu_title error: ", data.responseText);
      }
    });
    return false;
  }

  //------------------------------------------------------------------------

  function contactPHP(successFunction) {
    $.ajax({
      url: "php/get_menu_content.php",
      type: "get",
      dataType: "json",
      success: successFunction,
      error: function(data) {
        console.log("contactPHP error: ", data.responseText);
      }
    });
    return false;
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

      // "#" är valfritt men bra så att jag kan se vilka nummer som påverkas i dev tools
      hashMap["#" + oneInArray.mlid] = oneInArray;
    });

    for(var i in hashMap){
      var oneLink = hashMap[i];

      // här lägger vi till undernivå
      if (oneLink.plid){
        hashMap["#" + oneLink.plid].children.push(oneLink);
      }
    }

    console.log("menuTree II :", menuTree);
    console.log("hashMap :", hashMap);

    return menuTree;
  }



  // loop genom all menulinkdata, ge alla menylänkar en tom array (children), if not plid push to menutree



  //------------------------------------------------------------------------

$(function(){


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

 

});