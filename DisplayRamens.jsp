<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Ramen Connoisseurs</title>
		<link rel="stylesheet" href="MiniWeb.css">
	</head>
	<style>
		table {
		  border-collapse: collapse;
		  width: 900px;
		  background: #f2f2f2;
		  border: 2px solid #ccc;
		  border-radius: 6px;
		  box-sizing: border-box;
		  height: 750px;
		}
		
		th, td {
		  padding: 8px;
		  text-align: left;
		  border-bottom: 1px solid #ddd;
		  font: Helvetica;
		}
		
		a:hover {
			background-color: #ff8080;
		}
		
		h1 {
			text-align: center;
			font: Arial, Helvetica, sans-serif;
		}
		
		.center {
		  margin-left: auto;
		  margin-right: auto;
		  margin-top: auto:
		}
		
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
		
	</style>
	<body>
	<jsp:include page="../Partials/menu.jsp"/>
	
	<h1>All Ramen Experiences</h1>
	<!--  
	<div class = "container">
		Display by Broth 	
		<select name="broth">
			<option value="default" selected disabled hidden>Choose Broth</option>
			<option value="Tonkotsu Ramen">Tonkotsu Ramen</option>
			<option value="Shin Ramen">Shin Ramen</option>
			<option value="Shoyu Ramen">Shoyu Ramen</option>
			<option value="Hakata Ramen">Hakata Ramen</option>
			<option value="Tsukemen Ramen">Tsukemen Ramen</option>
			<option value="Shio Ramen">Shio Ramen</option>
			<option value="Miso Ramen">Miso Ramen</option>
			<option value="Sapporo Ramen">Sapporo Ramen</option>
			<option value="Wagyu Ramen">Wagyu Ramen</option>
		</select><p/>	
		
		<button type="submit" value="${pageContext.request.contextPath}/Ramen/List">
			Display Broths
		</button>
		<br>
		<br>
		Display by Rating
		<div class="slidecontainer">
			Rating <input type="range" min="0" max="11" value="11" class="slider" name="rating" id="rating" size=30>
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
		
		<button type="submit" value="${pageContext.request.contextPath}/Ramen/List">  
			Display Ratings
		</button>
		<br>
		<br>
	</div>
	-->
	<div class = "container">
	<table class="center">
		<thead>
			<tr>
				<th>Shop Name</th>
				<th>City</th>
				<th href="${pageContext.request.contextPath}/Ramen/List?idBroth=${ramen.ramen_Id}">Broth</th>
				<th>Rating</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="ramen" items="${ramens}">
				<tr>
					<td>
						<c:out value="${ramen.shop_Name}"/>
					</td>
					<td>
						<c:out value="${ramen.city}"/>
					</td>
					<td>
						<c:out value="${ramen.broth}"/>
					</td>
					<td>
						<c:out value="${ramen.rating}"/>
					</td>
					<td>
						<a href="${pageContext.request.contextPath}/Ramen/List?id=${ramen.ramen_Id}">Update Experience</a>
					</td>
					<td>
						<a href="${pageContext.request.contextPath}/Ramen/List?broth=${ramen.broth}">Display by Broth</a>
					</td>
					<td>
						<a href="${pageContext.request.contextPath}/Ramen/List?rating=${ramen.rating}">Display by Rating</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	</body>
</html>