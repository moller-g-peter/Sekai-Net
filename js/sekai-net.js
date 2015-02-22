
  function buildTopMenu(menuLinksData){
    // console.log("menuLinksData :", menuLinksData);
    $(".frontEndHeaderBottom .navbar-nav").empty();

    var menuTree = buildMenuTree(menuLinksData);
        // console.log("menuTree I :", menuTree);
        // $("ul.navbar-nav").find("li").not("loginToAdmin").remove();

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
          // console.log(menuTree[i].children[j].length);
          if (menuTree[i].children[j].children.length > 0)
          // Det fattades en .children! annars försöker den ta ett objekt och objekt kan inte räknas i en for loop!!!!!
          {
            subMenuItemLevelI.addClass("dropdown");
            // console.log("I made it!");
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

  function buildSelectMenu(menuLinksData) {
    // console.log("menuLinksData :", menuLinksData);
    $(".menuSelect select").empty();

    var select = $(".menuSelect select");

    var menuTree = buildMenuTree(menuLinksData);
        // console.log("menuTree I :", menuTree);
        // $("ul.navbar-nav").find("li").not("loginToAdmin").remove();


    select.append('<option value="">Top</option>');

    for (var i = 0; i < menuTree.length; i++)
    {
      var depth = "-";
      select.append(
        $('<option/>')
          .text(depth+" "+menuTree[i].title)
          .val(menuTree[i].mlid)
      );
        

      if (menuTree[i].children.length > 0) {
        depth = "--";
        for (var j = 0; j < menuTree[i].children.length; j++) {
          select.append(
            $('<option/>')
              .text(depth+" "+menuTree[i].children[j].title)
              .val(menuTree[i].children[j].mlid)
          );
        }
      }
    }
  }

  //------------------------------------------------------------------------

  function insert_text_to_DB(allData) {
    $.ajax({
      url: "php/save_content.php",
      type: "post",
      dataType: "json",
      data: {
        "page_data" : allData.page // "page_data" är referens till "save_content.php"
      },
      success: function(data) {
        // console.log("insert_text_to_DB success: ", data);
        save_menu_title(allData);
      },
      error: function(data) {
        // console.log("insert_text_to_DB error: ", data.responseText);
      }
    });
    return false;
  }

  //------------------------------------------------------------------------

  function save_menu_title(allData) {
    // console.log("insertToMenuLinks: ", insertToMenuLinks);

    $.ajax({
      url: "php/save_menu_title.php",
      type: "post",
      dataType: "json",
      data: {
        "insert_text_to_menu_links" : allData.menu
      },
      success: function(data) {
        // console.log("save_menu_title success: ", data);

        //when all is saved, go to the new page
        goToUrl("login");
        // contactPHP();
      },
      error: function(data) {
        // console.log("save_menu_title error: ", data.responseText);
      }
    });
    return false;
  }

  //------------------------------------------------------------------------

  function contactPHP(successFunction) {
    // console.log("successFunction I: ", successFunction);
    $.ajax({
      url: "php/get_menu_content.php",
      type: "get",
      dataType: "json",
      success: successFunction,
      error: function(data) {
        // console.log("contactPHP error: ", data.responseText);
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

      // här lägger vi till undernivån
      if (oneLink.plid){
        hashMap["#" + oneLink.plid].children.push(oneLink);
      }
    }

    // console.log("menuTree II :", menuTree);
    // console.log("hashMap :", hashMap);

    return menuTree;
  }

  //------------------------------------------------------------------------

  function getFooterInfo(){
    $.ajax({
      url: "php/get_footer_content.php",
      type: "get",
      dataType: "json",
      data: "get_footer_content",
      success: function(data){
        console.log("getFooterInfo I:", data);

      console.log("data:", data);
          var footerDiv = $("<div class='inverseFooter'/>");
        for (var i = 0; i < data.length; i++) {

          footerDiv.append($("<p/>").text(data[i].name));
          footerDiv.append($("<p/>").text(data[i].street));
          footerDiv.append($("<p/>").text(data[i].postalcode));
          footerDiv.append($("<p/>").text(data[i].city));
          footerDiv.append($("<p/>").text(data[i].phone));
          footerDiv.append($("<p/>").text(data[i].email));
          footerDiv.append($("<p/>").text(data[i].info));

          $(".inverseFooter").append(footerDiv);
        }

        console.log("getFooterInfo II:", data);
      },
      error: function(data){
        console.log("getFooterInfo error:", data.responseText);
      }
    });
    return false;
  }

  //------------------------------------------------------------------------

  function getImages(){
    $.ajax({
      url: "php/get_images.php",
      type: "get",
      dataType: "json",
      success: function(data){
        console.log("get images success: ", data);
        createImgSelect(data);
      },
      error: function(data){
      console.log("get images error: ", data);
      }
    });
  }

  function createImgSelect(data){
    var selectImgInHtml = $("<select class='form-control'></select>");

    var selectTop = $("<option>Select picture</option>");

    selectTop.data("imgdata",{iid:null});

    selectImgInHtml.append(selectTop);

    buildImgOptions(selectImgInHtml, data);

    $(".inputField .imgSelect").html(selectImgInHtml);
  }

    function buildImgOptions(selectImgInHtml, data){
      for (var i = 0; i < data.length; i++) {

        var ImgOptions = $('<option value="' + data[i].iid + '">' + " " + data[i].title + '</option>');

        ImgOptions.data("imgdata", data[i]);

        selectImgInHtml.append(ImgOptions);
      }
    }
  //------------------------------------------------------------------------

$(function(){

  $(".inputField").submit(function() {
    // console.log("path: ", $("#url_inputField").val());

    var inputFieldData = {
      ":title" : $("#menu_inputField").val(),
      ":url" : $("#url_inputField").val(),
      ":body" : $("#menu_textArea").val(),
      ":img_id" : $(".imgSelect select").val()
    };

    var menuFieldData = {
      ":menuTitle" : $("#menuTitle_inputField").val(),
      ":url" : $("#url_inputField").val(),
      ":plid" :  $(".menuSelect :selected").val()
    };

    var allData = {
      "page" : inputFieldData,
      "menu" : menuFieldData
    };

    insert_text_to_DB(allData);
    this.reset();
    $("section.page").empty();

    return false;
  });

getFooterInfo();
getImages();


});