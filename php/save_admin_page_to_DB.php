<?php

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
        //on success, click the .contentListLink class to
        //switch to the contentList and getPages again
        $(".contentListLink").click();
      },
      error: function(data) {
        console.log("insertNewPage error: ", data);
      }
    });
  }