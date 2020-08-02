/**
 * http://usejsdoc.org/
 */
/**
 * 
 */

var Java009 = {
		addItemCart: function(producId, quanlity) {
			var sl=$("#selectSL option:selected").text();
			var data09 = {
					"producId": producId,
					"quanlity": sl
			};
			$.ajax({
				url: "/cart/add-item",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					alert(jsonResult.message);
				}
			});
		},
		
		
		saveContactForm: function() {
			var firstName = $( "#firstName" ).val();
			alert(firstName);
			var data = {
					"firstName": firstName,
					"lastName": "Dai"
			};
			
//			data["email"] = $('#'+elementIdOfEmail).val();
			
			$.ajax({
				url: "/save-contact-with-ajax",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					alert(jsonResult.message);
					//$("#message").html(jsonResult.data);
					//$('#blogModal').modal('show');
				}
			});
		}
}
