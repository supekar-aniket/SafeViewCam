<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>SafeViewCam</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

    <meta charset="UTF-8">
    <title>SafeViewCam</title>
    <link href="css/style.css" rel="stylesheet">
    <script src="js/main.js"></script>
    <style>
    	body {
				font-family: Arial, sans-serif;
				background-color: #f4f4f4;
				margin: 0;
				padding: 0;
			}
			
			.container {
				max-width: 600px;
				margin: 20px auto;
				padding: 20px;
				background-color: #fff;
				border-radius: 5px;
				box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			}
			
			h2 {
				text-align: center;
				color: #333;
			}
			
			form {
				margin-top: 20px;
			}
			
			label {
				font-weight: bold;
			}
			
			input[type="text"],
			input[type="email"],
			input[type="tel"],
			select {
				width: 100%;
				padding: 10px;
				margin-bottom: 10px;
				border: 1px solid #ccc;
				border-radius: 4px;
				box-sizing: border-box;
			}
			
			button {
				padding: 10px 20px;
				background-color: #4CAF50;
				color: #fff;
				border: none;
				border-radius: 4px;
				cursor: pointer;
				margin-right: 10px;
			}
			
			button[type="submit"] {
				background-color: #008CBA;
			}
			
			button[type="submit"]:hover,
			button[type="button"]:hover {
				background-color: #45a049;
			}
    </style>
</head>
<body>

	<!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow-sm py-3 py-lg-0 px-3 px-lg-0">
        <a href="/" class="navbar-brand ms-lg-5">
            <h1 class="display-5 m-0 text-primary">
                Safe<span class="text-secondary">ViewCam</span>
            </h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="userDetailsPage" class="nav-item nav-link">Customer Details</a>
                <a href="contactDetailsPage" class="nav-item nav-link">Contact Details</a>
                <a href="tel:+91 8767849613" class="nav-item nav-link nav-contact bg-secondary text-white px-5 ms-lg-5"><i class="bi bi-telephone-outbound me-2"></i>+91 8767849613</a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

    <div class="container">
        <h2>Edit Customer</h2>
        <%
        	Connection connection = null;
        	Statement statement = null;
        	ResultSet resultSet = null;
        
        	int contact_id = Integer.parseInt(request.getParameter("contact_id"));
        	
        	try{
        		Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/safeviewcam?useSSL=false";
                String uname = "root";
                String pass = "Cartoon_34";
                
                connection = DriverManager.getConnection(url, uname, pass);
                statement = connection.createStatement();
                
                String query = "select * from contacts where contact_id = "+contact_id;
                resultSet = statement.executeQuery(query);
                
                while (resultSet.next()) {
                %>
                	
                	<form action="editContactData" method="post">
                	
        				<input type="hidden" name="contact_id" value="<%=resultSet.getInt("contact_id")%>">
        				
        				<div>
        				    <label for="email">Email:</label>
        				    <input type="email" id="email" name="email" value="<%=resultSet.getString("email")%>">
        				</div>
        				
        				<div>
        				    <label for="phone">Mobile No:</label>
        				    <input type="tel" id="phone" name="mobileno" value="<%=resultSet.getString("mobileno")%>">
        				</div>
        				
        				<div>
						    <label for="subject">Select Subject:</label>
						    <select name="subject">
						        <option value="Other"<%= resultSet.getString("subject").equals("Other") ? "selected" : "" %>>Other</option>
						        <option value="Inquiry"<%= resultSet.getString("subject").equals("Inquiry") ? "selected" : "" %>>Inquiry</option>
						        <option value="Installation"<%= resultSet.getString("subject").equals("Installation") ? "selected" : "" %>>Installation</option>
						        <option value="Maintenance"<%= resultSet.getString("subject").equals("Maintenance") ? "selected" : "" %>>Maintenance</option>
						    </select>
						</div>
        				
        				
        				<div>
        				    <label for="message">Message:</label>
        				    <input type="text" id="message" name="message" value="<%=resultSet.getString("message")%>">
        				</div>
        				
        				<div>
						    <label for="status">Status:</label>
						    <select id="status" name="status">
						        <option value="Pending" <%= resultSet.getString("status").equals("Pending") ? "selected" : "" %>>Pending</option>
						        <option value="In Process" <%= resultSet.getString("status").equals("In Process") ? "selected" : "" %>>In Process</option>
						        <option value="Done" <%= resultSet.getString("status").equals("Done") ? "selected" : "" %>>Done</option>
						    </select>
						</div>
        				<button value="contactDetailsPage">Back</button>
        				<button type="submit">Save</button>
            
        			</form>
                	
               <%
                    }
                } catch(Exception e) {
                    e.printStackTrace();
                } finally {
                    // Close resources in the reverse order of their creation
                    try {
                        if (resultSet != null) {
                            resultSet.close();
                        }
                        if (statement != null) {
                            statement.close();
                        }
                        if (connection != null) {
                            connection.close();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            %>  
    </div>
    
    <!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>

</body>
</html>
