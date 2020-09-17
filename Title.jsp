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
		
		h1 {
			text-align: center;
			font: Arial, Helvetica, sans-serif;
			font-weight: bold;
			font-size: 45px;
		}
		
		body {
		  font-family: Arial, Helvetica, sans-serif;
		}
		
		* {
		  box-sizing: border-box;
		}
		
		/* style the container */
		.container {
		  position: relative;
		  border-radius: 5px;
		  background-color: #f2f2f2;
		  padding: 20px 0 30px 0;
		} 
		
		/* style inputs and link buttons */
		input,
		.btn {
		  width: 100%;
		  padding: 12px;
		  border: none;
		  border-radius: 4px;
		  margin: 5px 0;
		  opacity: 0.85;
		  display: inline-block;
		  font-size: 17px;
		  line-height: 20px;
		  text-decoration: none; /* remove underline from anchors */
		}
		
		input:hover,
		.btn:hover {
		  opacity: 1;
		}
		
		/* add appropriate colors to fb, twitter and google buttons */
		.fb {
		  background-color: #3B5998;
		  color: white;
		}
		
		.twitter {
		  background-color: #55ACEE;
		  color: white;
		}
		
		.google {
		  background-color: #dd4b39;
		  color: white;
		}
		
		/* style the submit button */
		input[type=submit] {
		  background-color: #000000;
		  color: white;
		  cursor: pointer;
		}
		
		input[type=submit]:hover {
		  background-color: #ff8080;
		}
		
		/* Two-column layout */
		.col {
		  float: left;
		  width: 50%;
		  margin: auto;
		  padding: 0 50px;
		  margin-top: 6px;
		}
		
		/* Clear floats after the columns */
		.row:after {
		  content: "";
		  display: table;
		  clear: both;
		}
		
		/* vertical line */
		.vl {
		  position: absolute;
		  left: 50%;
		  transform: translate(-50%);
		  border: 2px solid #ddd;
		  height: 175px;
		}
		
		/* text inside the vertical line */
		.vl-innertext {
		  position: absolute;
		  top: 50%;
		  transform: translate(-50%, -50%);
		  background-color: #f1f1f1;
		  border: 1px solid #ccc;
		  border-radius: 50%;
		  padding: 8px 10px;
		}
		
		/* hide some text on medium and large screens */
		.hide-md-lg {
		  display: none;
		}
		
		/* bottom container */
		.bottom-container {
		  text-align: center;
		  background-color: #666;
		  border-radius: 0px 0px 4px 4px;
		}
		
		/* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
		@media screen and (max-width: 650px) {
		  .col {
		    width: 100%;
		    margin-top: 0;
		  }
		  /* hide the vertical line */
		  .vl {
		    display: none;
		  }
		  /* show the hidden text on small screens */
		  .hide-md-lg {
		    display: block;
		    text-align: center;
		  }
		}
		
		h2 {
			text-align: center;
			font: Arial, Helvetica, sans-serif;
		}
		
		p {
			text-align: center;
			font: Arial, Helvetica, sans-serif;
		}
		
		h4 {
			text-align: center;
			font: Arial, Helvetica, sans-serif;
			color: #6b6b6b;
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

		<h2>Ramen Connoiseur Social Login Form</h2>
		<p>This login form doesn't actually work, I just added it because it looked cool. Hope you become a Ramen connoiseur like myself after browsing my mini web.</p>
	
		<div class="container">
			<form action="">
				<div class="row">
					<h2 style="text-align: center">Login with Social Media or
						Manually</h2>
					<div class="vl">
						<span class="vl-innertext">or</span>
					</div>
	
					<div class="col">
						<a href="#" class="fb btn"> <i class="fa fa-facebook fa-fw"></i>
							Login with Facebook
						</a> <a href="#" class="twitter btn"> <i
							class="fa fa-twitter fa-fw"></i> Login with Twitter
						</a> <a href="#" class="google btn"><i class="fa fa-google fa-fw">
						</i> Login with Google+ </a>
					</div>
	
					<div class="col">
						<div class="hide-md-lg">
							<p>Or sign in manually:</p>
						</div>
	
						<input type="text" name="username" placeholder="Username" required>
						<input type="password" name="password" placeholder="Password"
							required> <input type="submit" value="Login">
					</div>
	
				</div>
			</form>
		</div>
	
		<div class="bottom-container">
			<div class="row">
				<div class="col">
					<a href="#" style="color: white" class="btn">Sign up</a>
				</div>
				<div class="col">
					<a href="#" style="color: white" class="btn">Forgot password?</a>
				</div>
			</div>
		</div>
</body>
</html>