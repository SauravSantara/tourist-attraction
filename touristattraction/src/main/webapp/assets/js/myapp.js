// Navbar - Active Menu
$(function() {
	
	switch(menu) {
		
		case 'Home':
			$('#home').addClass('active');
			$('#home').attr("aria-current","page");
			break;
		
		case 'About us':
			$('#about').addClass('active');
			$('#about').attr("aria-current","page");
			break;
		
		case 'Contact us':
			$('#contact').addClass('active');
			$('#contact').attr("aria-current","page");
			break;
		
		default:
			$('#blog').addClass('active');
			$('#blog').attr("aria-current","page");
	}
});