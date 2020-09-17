<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Ramen Connoisseurs</title>
		<link rel="stylesheet" href="MiniWeb.css">
	</head>
	<style>
		ul {
		  list-style-type: none;
		  margin: 0;
		  padding: 0;
		  overflow: hidden;
		  background-color: #333;
		}
		
		li {
		  float: left;
		}
		
		li a {
		  display: block;
		  color: white;
		  text-align: center;
		  padding: 14px 16px;
		  text-decoration: none;
		}
		/* Change the link color to #111 (black) on hover */
		li a:hover {
		  background-color: #ff8080;
		}
		
		h4 {
			text-align: center;
			font: Arial, Helvetica, sans-serif;
			color: #6b6b6b;
		}
		
		h1 {
			text-align: center;
			font: Arial, Helvetica, sans-serif;
			font-weight: bold;
			font-size: 45px;
		}
	</style>
	<body>
		<h1>Welcome To Ramen Connoiseurs</h1>
		<h4>By: Myles Garcia</h4>
		<ul>
		<li><a href="http://localhost:13735/MiniWeb_Dynamic/RamenPages/Insert.jsp">Add A Ramen Bowl</a></li>
		<li><a href="${pageContext.request.contextPath}/Ramen/List">Display Ramen Experiences</a></li>
		<li><a href="http://localhost:13735/MiniWeb_Dynamic/RamenPages/Title.jsp">Title Page</a></li>
		</ul>
	</body>
</html>