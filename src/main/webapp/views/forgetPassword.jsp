<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SafeViewCam</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Custom CSS -->
 
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
                <a href="indexPage" class="nav-item nav-link active">Home</a>
                <a href="aboutPage" class="nav-item nav-link">About</a>
                <a href="servicePage" class="nav-item nav-link">Service</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">More</a>
                    <div class="dropdown-menu m-0">
                        <a href="pricePage" class="dropdown-item">Pricing Plan</a>
                        <a href="productPage" class="dropdown-item">Products</a>
                    </div>
                </div>
                <a href="loginPage" class="nav-item nav-link">Login</a>
                <a href="tel:+91 8767849613" class="nav-item nav-link nav-contact bg-secondary text-white px-5 ms-lg-5"><i class="bi bi-telephone-outbound me-2"></i>+91 8767849613</a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

    <!-- Main content -->
    <div class="login-container">
        <div class="login-card">
            <h2 class="resetPassword-card-title">Reset Password</h2>
            <form action="resetPassword" method="post" onsubmit="return validateForm()"> <br><br>
                <div class="mb-3">
                    <label for="email" class="form-label">Username or Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="mb-3">
                    <label for="petname" class="form-label">Your Pet Name</label>
                    <input type="text" class="form-control" id="petname" name="petname" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Enter Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="mb-3">
                    <label for="confirmPassword" class="form-label">Confirm Password</label>
                    <input type="password" class="form-control" id=confirmPassword name="confirmPassword" required>
                </div>
                <div class="mb-3">
                    <button type="submit" class="btn btn-primary btn-login">Reset Password</button>
                </div>
                <div class="login-link">
                    <a href="loginPage">Back to Login</a>
                </div>
            </form>
        </div>
    </div>
    </form>
    <!-- Forget password form end -->
    

        <!-- JavaScript Libraries and Custom Scripts -->
        <!-- Include your JS scripts here -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </div>
</body>

	<script>
    function validateForm() {
    	var password = document.getElementById("password").value;
    	var confirmPassword = document.getElementById("confirmPassword").value;

    	if (password !== confirmPassword) {
    		alert("Passwords do not match!");
    		return false;
    	}

    	return true;
    }
    </script>

</html>
