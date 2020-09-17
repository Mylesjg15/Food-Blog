                                                                  <!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Ramen Connoisseurs</title>
		<link rel="stylesheet" href="MiniWeb.css">
	</head>
	<style>
		.slider {
		  -webkit-appearance: none;
		  width: 20%;
		  height: 15px;
		  border-radius: 5px;   
		  outline: none;
		  opacity: 0.7;
		  -webkit-transition: .2s;
		  transition: opacity .2s;
		  background: #c2d6d6;
		}
		
		.slider::-webkit-slider-thumb {
		  -webkit-appearance: none;
		  appearance: none;
		  width: 25px;
		  height: 25px;
		  border-radius: 50%; 
		  background: #ff8080;
		  cursor: pointer;
		}
		
		.slider::-moz-range-thumb {
		  width: 25px;
		  height: 25px;
		  border-radius: 50%;
		  background: #ff8080;
		  cursor: pointer;
		}
		
		input[type=text], select {
		  width: 100%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}
	
		input[type=submit] {
		  width: 100%;
		  background-color: #000000;
		  color: white;
		  border-color: #000000;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}
	
		input[type=submit]:hover {
		  background-color: #ff8080;
		}
		
		div {
		  border-radius: 5px;
		  background-color: #f2f2f2;
		  padding: 20px;
		}
		
		h1 {
			text-align: center;
			font: Arial, Helvetica, sans-serif;
		}
	</style>
	<body>
	<jsp:include page="../Partials/menu.jsp"/>
	<h1>Change a Ramen Experience</h1>
		<div>
			<form name="updateRamen" action="${pageContext.request.contextPath}/Ramen" method="POST">
				
				<!-- The setAttribute of update is "ramens" so that is what should be called as the object -->
				
				Shop Name <input type="text" name="shop_name" id="shop_name" size=30 value="${ramens.shop_Name}"><p/>
				City <input type="text" name="city" id="city" size=30 value="${ramens.city}"><p/>
				Broth Type <select name="broth" id="broth">
								<option value="Tonkotsu Ramen" ${ramens.broth == 'Tonkotsu Ramen' ? 'selected' : ''}>Tonkotsu Ramen</option>
								<option value="Shin Ramen" ${ramens.broth == 'Shin Ramen' ? 'selected' : ''}>Shin Ramen</option>
								<option value="Shoyu Ramen" ${ramens.broth == 'Shoyu Ramen' ? 'selected' : ''}>Shoyu Ramen</option>
								<option value="Hakata Ramen" ${ramens.broth == 'Hakata Ramen' ? 'selected' : ''}>Hakata Ramen</option>
								<option value="Tsukemen Ramen" ${ramens.broth == 'Tsukemen Ramen' ? 'selected' : ''}>Tsukemen Ramen</option>
								<option value="Shio Ramen" ${ramens.broth == 'Shio Ramen' ? 'selected' : ''}>Shio Ramen</option>
								<option value="Miso Ramen" ${ramens.broth == 'Miso Ramen' ? 'selected' : ''}>Miso Ramen</option>
								<option value="Sapporo Ramen" ${ramens.broth == 'Sapporo Ramen' ? 'selected' : ''}>Sapporo Ramen</option>
								<option value="Wagyu Ramen" ${ramens.broth == 'Wagyu Ramen' ? 'selected' : ''}>Wagyu Ramen</option>
							</select><p/>
				 			
				<div class="slidecontainer">
					Rating <input type="range" min="0" max="10" value="${ramens.rating}" class="slider" name="rating" id="rating" size=30>
					<p>Rating Value: <span id="ratings"></span></p>
				</div>
			
				<script>
					var slider = document.getElementById("rating");
					var output = document.getElementById("ratings");
					output.innerHTML = slider.value;
			
					slider.oninput = function() {
						output.innerHTML = this.value;
					}
				</script>
				
				<input type="hidden" name="ramen_id" value="${ramens.ramen_Id}"/><br/>
				<input type="hidden" name="action" value="update"/><br/>
				
				<input type="submit" value="Update">
				
			</form>
		</div>
	</body>
</html>