/**
 * 
 */

var Java09 = {
		addItemCart: function(productId, price) {
			var data = {
					"productId": productId,
					"price": price,
					"quantity": $( "#selectSL" ).val()
			};
			$.ajax({
				url: "/cart/add-item",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					$("#checkout").html(jsonResult.message);
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
