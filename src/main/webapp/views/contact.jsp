<!DOCTYPE html>
<html lang="en">

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
</head>

<body>
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow-sm py-3 py-lg-0 px-3 px-lg-0">
        <a href="/" class="navbar-brand ms-lg-5">
            <h1 class="display-5 m-0 text-primary">Safe<span class="text-secondary">ViewCam</span></h1>
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
                <a href="indexPage" class="nav-item nav-link">Logout</a>
                <a href="tel:+91 8767849613" class="nav-item nav-link nav-contact bg-secondary text-white px-5 ms-lg-5"><i class="bi bi-telephone-outbound me-2"></i>+91 8767849613</a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Hero Start -->
    <div class="container-fluid bg-primary p-5 hero-header mb-5">
        <div class="row py-5">
            <div class="col-12 text-center">
                <h1 class="display-1 text-white animated zoomIn">Contact</h1>
                <a href="" class="h4 text-white">Home</a>
                <i class="far fa-circle text-white px-2"></i>
                <a href="" class="h4 text-white">Contact</a>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Contact Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 600px;">
                <h5 class="text-primary text-uppercase" style="letter-spacing: 5px;">Contact Us</h5>
                <h1 class="display-5 mb-0">Please Feel Free To Contact Us</h1>
            </div>
            <div class="row g-5">
                <div class="col-lg-7 wow slideInUp" data-wow-delay="0.3s">
                    <div class="bg-light rounded p-5">
                        <form action="contactDataPage" method="POST">
                            <div class="row g-3">
                                <div class="col-6">
                                    <input type="text" name="email" class="form-control border-0 px-4" placeholder="Email" style="height: 55px;" required="required">
                                </div> 
                                
                                <div class="col-6">
                                    <input type="tel" name="mobileno" class="form-control border-0 px-4" placeholder="Mobile" style="height: 55px;" required="required">
                                </div> 
                                
                                <div class="col-12">
                                	<label> Select-Subject </label>
                                    <select name="subject" style="text-align: center;">
                                    	<option value="Other">Other</option>
                                    	<option value="Inquiry">Inquiry</option>
                                    	<option value="Installation">Installation</option>
                                    	<option value="Maintenance">Maintenance</option>
                                    </select>
                                </div>
                                <div class="col-12">
                                    <textarea class="form-control border-0 px-4 py-3" rows="8" name="message" placeholder="Message" required="required"></textarea>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5 wow slideInUp" data-wow-delay="0.6s">
                    <div class="bg-light rounded p-5">
                        <div class="d-flex align-items-center mb-2">
                            <i class="bi bi-geo-alt fs-1 text-primary me-3"></i>
                            <div class="text-start">
                                <h5 class="mb-1">Our Office</h5>
                                <span>Karve Nagar - Pune</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mb-2">
                            <i class="bi bi-envelope-open fs-1 text-primary me-3"></i>
                            <div class="text-start">
                                <h5 class="mb-1">Email Us</h5>
                                <span>safe@viewcam.com</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mb-4">
                            <i class="bi bi-phone-vibrate fs-1 text-primary me-3"></i>
                            <div class="text-start">
                                <h5 class="mb-1">Call Us</h5>
                                <span>+91 8767849613</span>
                            </div>
                        </div>
                        <div>
                            <iframe class="position-relative w-100"
                                  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15135.684987108275!2d73.8277889!3d18.4822807!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bed875b6bb25%3A0x922d8b3c0112c4fe!2sKarve%20Nagar%2C%20Pune%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1641667436187!5m2!1sen!2sin"
                                frameborder="0" style="height: 230px; border:0;" allowfullscreen="" aria-hidden="false"
                                tabindex="0"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


<!-- Footer Start -->
	<div class="container-fluid bg-dark text-light mt-5 py-5 wow fadeInUp"
		data-wow-delay="0.1s">
		<div class="container pt-5">
			<div class="row g-5">
				<div class="col-lg-3 col-md-6">
				</div>
				<div class="col-lg-3 col-md-6">
					<h3 class="text-white mb-4">Get In Touch</h3>
					<div class="d-flex flex-column justify-content-start">
						<a class="text-light mb-2" href="/"><i
							class="bi bi-geo-alt text-primary me-2"></i>Karve Nagar, Pune</a> <a
							class="text-light mb-2" href="aboutPage"><i
							class="bi bi-envelope-open text-primary me-2"></i>safe@viewcam.com</a> <a
							class="text-light mb-2" href="contactPage"><i
							class="bi bi-telephone text-primary me-2"></i>+91 8767849613</a> 
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3 class="text-white mb-4">Follow Us</h3>	
					<a class="btn btn-lg btn-primary btn-lg-square rounded me-2"
							href="https://github.com/supekar-aniket"><i class="fab fa-github"></i></a>
					<a class="btn btn-lg btn-primary btn-lg-square rounded" href="https://www.instagram.com/_wanderer_34_/"><i
							class="fab fa-instagram fw-normal"></i></a>
					<a class="btn btn-lg btn-primary btn-lg-square rounded me-2"
							href="https://www.linkedin.com/in/supekaraniket34"><i class="fab fa-linkedin-in fw-normal"></i></a>
				</div>
				<div class="col-lg-3 col-md-6">
					
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid bg-primary text-light py-4">
		<div class="container">
			<div class="row g-5">
				<div class="col-md-6 text-center text-md-start">
					<p class="mb-md-0">
						&copy; <a class="text-white border-bottom" href="indexPage">SafeViewCam</a>.
						All Rights Reserved.
					</p>
				</div>
				<div class="col-md-6 text-center text-md-end">
					<p class="mb-0">
						Designed by <a class="text-white border-bottom" href="indexPage">SafeViewCam</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>