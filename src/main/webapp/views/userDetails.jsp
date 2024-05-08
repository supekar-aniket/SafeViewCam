<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
                <a href="loginPage" class="nav-item nav-link">Logout</a>
                <a href="tel:+91 8767849613" class="nav-item nav-link nav-contact bg-secondary text-white px-5 ms-lg-5"><i class="bi bi-telephone-outbound me-2"></i>+91 8767849613</a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->
	
    <h1 style="text-align: center;">Customer Details</h1>
    <table>
        <tr style="text-align: center;">
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Address</th>
            <th>Delete</th>
        </tr>
    
        <%
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/safeviewcam?useSSL=false";
                String uname = "root";
                String pass = "Cartoon_34";
                
                connection = DriverManager.getConnection(url, uname, pass);
                statement = connection.createStatement();
                
                String query = "select * from user_account";
                resultSet = statement.executeQuery(query);
                
                while (resultSet.next()) {
        %>
                    <tr style="text-align: center;">
                        <td><%=resultSet.getString("name")%></td>
                        <td><%=resultSet.getString("email")%></td>
                        <td><%=resultSet.getString("mobileno")%></td>
                        <td><%=resultSet.getString("address")%></td>
                        <td>
                            <form action="deleteUser" method="post" onsubmit="return confirmDelete()">
                                <input type="hidden" name="email" value="<%=resultSet.getString("email")%>">
                                <button type="submit" class="delete-button">Delete</button>
                            </form>
                        </td>
                    </tr>
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
    </table>
    
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

	<!-- Pop up for Confirm Delete -->
	<script>
	function confirmDelete() {
        return confirm("Are you sure you want to delete this contact?");
    }
    </script>
	
</html>
