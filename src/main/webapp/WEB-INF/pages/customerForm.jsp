<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/*
Colors:

Darker Brown:#301800

Dark Brown:  #683500

Light Brown: #ad5800

Caramel:     #e07200

White:       #FFFFFF

Black:       #000000

Accent:      #003200
*/

*{
	margin:0;
	padding:0;
}

body{
	background-color:#ad5800;
	font: normal normal normal 1em/2em Chicago, sans-serif;
}

/*XXXXXXXXXXXXXXXXXXXXXXXXX  

        DIVISIONS  

XXXXXXXXXXXXXXXXXXXXXXXXX*/

#container{
	width: 90%;
	margin: 0 auto;
	border: solid thick #301800;
	padding:1% 0 1% 0;
	background-color: #683500;
}

header{
	margin-top:2%;
	border-bottom: solid thick #301800;
	background-color: #ad5800;
}

#main{
	width:97%;
	padding:2%;
	margin:1%;
}

footer{
	border-top: solid thick #301800;
	width:100%;
	margin:5% auto;
	padding:0.5em 0;
	clear:both;
	text-align:center;
	color:#e07200;
}

/*XXXXXXXXXXXXXXXXXXXXXXXXX  

         NAV BAR  

XXXXXXXXXXXXXXXXXXXXXXXXX*/

nav{
	width:90%;
	margin:0 auto;
	padding:5px 10px 5px 10px;
	text-align:center;
	display:block;
}

nav ul{
	width:100%;
	font-weight: bold;
	list-style:none;
}

nav ul li{
	display:inline;
	width:10%;
}

nav ul li a {
	width:10%;
	padding:5px;
	margin:2px;
	color:#e07200;
	text-decoration:none;
}

nav ul li a:hover{
	background:#e07200;
	color:#683500;
}



</style>
<meta charset="UTF-8">
<title>Customer Entrance Handling</title>
</head>
<body>
  <section id="container">
    <header>
	  <section id="title">
	    <h1>Candy Store</h1>
	  </section>
	  <section id="navbar">
	    <nav>
		  <ul>
			<li><a href = "">Home</a></li>
		    <li><a href = "">Catalog</a></li>
		  </ul>
		</nav>
	  </section>
	</header>
	<section id="main">
	<h2>Customer Registration Form</h2>
		<mvc:form modelAttribute="customer" action="result.mvc">
			<table>
			    <tr>
			        <td><mvc:label path="lastname">Last Name</mvc:label></td>
			        <td><mvc:input path="lastname" /></td>
			    </tr>
			    <tr>
			        <td><mvc:label path="firstname">First Name</mvc:label></td>
			        <td><mvc:input path="firstname" /></td>
			    </tr>
			    <tr>
			        <td><mvc:label path="address">Address</mvc:label></td>
			        <td><mvc:input path="address" /></td>
			    </tr>
		   	    <tr>
			        <td><mvc:label path="city">City</mvc:label></td>
			        <td><mvc:input path="city" /></td>
			    </tr>
				<tr>
		            <td><mvc:label path="state">State</mvc:label></td>
		            <td><mvc:input path="state" /></td>
		        </tr>
		        <tr>
			        <td><mvc:label path="zip">Zip</mvc:label></td>
			        <td><mvc:input path="zip" /></td>
			    </tr>
		        <tr>
		            <td><mvc:label path="country">Country</mvc:label></td>
		            <td><mvc:select path="country" items="${countries}" /></td>
		        </tr>
		        <tr>
		            <td><mvc:label path="email">Email</mvc:label></td>
		            <td><mvc:input path="email" /></td>
		        </tr>
		        <tr>
			        <td colspan="2">
		                <input type="submit" value="Submit" />
			        </td>
			    </tr>
			</table>  
		</mvc:form>
		<a href = "viewAll.mvc">View all Customers</a>
</section>
	<footer>
	    <nav>
		  <ul>
			<li><a href = "">Home</a></li>
		    <li><a href = "">Catalog</a></li>
		  </ul>
		</nav>
	</footer>
  </section>
</body>
</html>