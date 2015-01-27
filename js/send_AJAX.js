// $(function(){

// 	$(".backEndMain form").submit(function(){
// 		var all_inputFields = {
// 			":title" : $(this).find("#menu_inputField").val(),
// 			":body" : $(this).find("#menu_textArea").val()
// 		};

// 		ajax_to_DB(all_inputFields);

// 		$(this).reset();

// 		return false;
// 	});

// 	function ajax_to_DB(all_inputFields) {
// 		$.ajax({
// 			url: "php/save_content.php",
// 			type: "post",
// 			dataType: "json",
// 			data: {
// 			//this request must have data to get through the
// 			//if-statement in save_content.php
// 			"page_data" : all_inputFields
// 		},
// 		success: function(data) {
// 			console.log("ajax_to_DB success: ", data);
// 			//on success, click the .contentListLink class to
// 			//switch to the contentList and getPages again
// 			$(".contentListLink").click();
// 		},
// 		error: function(data) {
// 			console.log("ajax_to_DB error: ", data);
// 		}
// 	});
// 	}

// 	function insertNewPage(adminFormData) {
// 			$.ajax({
// 				url: "php/save_content.php",
// 				type: "post",
// 				dataType: "json",
// 				data: {
// 				//this request must have data to get through the
// 				//if-statement in save_content.php
// 				"page_data" : adminFormData
// 			},
// 			success: function(data) {
// 				console.log("insertNewPage success: ", data);
// 				//on success, click the .contentListLink class to
// 				//switch to the contentList and getPages again
// 				$(".contentListLink").click();
// 			},
// 			error: function(data) {
// 				console.log("insertNewPage error: ", data);
// 			}
// 		});
// 	}
// });