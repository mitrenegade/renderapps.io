@navLoader = () ->
	sec1height = $('section#love-header').height();
	sec2height = $('section#our-passion').height();
	sec3height = $('section#our-services').height();
	sec4height = $('section#why-renderapps').height();
	
	currentSec = 1;

	switchNav = () ->
		$('.nav-item').removeClass('active');
		$('.nav-item:nth-child(' + (currentSec - 1) + ')').addClass('active');
		if currentSec == 1
			$('.navbar.navbar-fixed-top').addClass('hidden');
		else 
			$('.navbar.navbar-fixed-top').removeClass('hidden');

	$(document).scroll ->
		# console.log($(document).scrollTop());
		switch 
			when $(document).scrollTop() > (sec1height + sec2height + sec3height)
				if currentSec != 4
					currentSec = 4;
					switchNav();
				break;
			when $(document).scrollTop() > (sec1height + sec2height)
				if currentSec != 3
					currentSec = 3;
					switchNav();
				break;
			when $(document).scrollTop() > sec1height
				if currentSec != 2
					currentSec = 2;
					switchNav();
				break;
			else 
				if currentSec != 1
					currentSec = 1
					switchNav();
				break;

