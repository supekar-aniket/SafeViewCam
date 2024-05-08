(function($) {
	"use strict";

	// Initiate the wowjs
	new WOW().init();

	// Sticky Navbar
	$(window).scroll(function() {
		if ($(this).scrollTop() > 40) {
			$('.navbar').addClass('sticky-top');
		} else {
			$('.navbar').removeClass('sticky-top');
		}
	});

	// Dropdown on mouse hover
	$(document).ready(function() {
		function toggleNavbarMethod() {
			if ($(window).width() > 992) {
				$('.navbar .dropdown').on('mouseover', function() {
					$('.dropdown-toggle', this).trigger('click');
				}).on('mouseout', function() {
					$('.dropdown-toggle', this).trigger('click').blur();
				});
			} else {
				$('.navbar .dropdown').off('mouseover').off('mouseout');
			}
		}
		toggleNavbarMethod();
		$(window).resize(toggleNavbarMethod);
	});


	// Back to top button
	$(window).scroll(function() {
		if ($(this).scrollTop() > 100) {
			$('.back-to-top').fadeIn('slow');
		} else {
			$('.back-to-top').fadeOut('slow');
		}
	});
	$('.back-to-top').click(function() {
		$('html, body').animate({ scrollTop: 0 }, 1500, 'easeInOutExpo');
		return false;
	});


	// Testimonials carousel
	$(".testimonial-carousel").owlCarousel({
		autoplay: true,
		smartSpeed: 1500,
		margin: 45,
		dots: true,
		loop: true,
		center: true,
		responsive: {
			0: {
				items: 1
			},
			576: {
				items: 1
			},
			768: {
				items: 2
			},
			992: {
				items: 3
			}
		}
	});

})(jQuery);

function confirmDelete() {
	return confirm("Are you sure you want to delete this contact?");
}

function validateForm() {
	var password = document.getElementById("password").value;
	var confirmPassword = document.getElementById("confirmPassword").value;

	if (password !== confirmPassword) {
		alert("Passwords do not match!");
		return false;
	}

	return true;
}











