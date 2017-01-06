@navLoader = () ->
	sec1height = $('section#love-header').outerHeight();
	# sec2height = $('section#our-passion').outerHeight();
	sec2height = $('.first-body').outerHeight();
	# sec3height = $('section#our-services').outerHeight();
	sec3height = $('.second-body').outerHeight();
	sec4height = $('section#why-renderapps').outerHeight();
	
	currentSec = 1;

	$('.fake-nav').on 'click', (e) ->
		e.preventDefault()
		switch
			when $(this).attr('href') == '#passion'
				$(document).scrollTop(sec1height);
				console.log(sec1height + 10);
				console.log($(document).scrollTop());
				break;
			when $(this).attr('href') == '#services'
				$(document).scrollTop(sec1height + sec2height);
				console.log(sec1height + sec2height);
				console.log($(document).scrollTop());
				break;
			when $(this).attr('href') == '#why-us'
				$(document).scrollTop(sec1height + sec2height + sec3height);
				console.log(sec1height + sec2height + sec3height);
				console.log($(document).scrollTop());
				break;
			else
				break;

		updateScrollPos();
		return

	$(document).scroll ->
		if $('body').hasClass('scroll-nav')
			updateScrollPos();

	switchNav = () ->
		$('.nav-item').removeClass('active');
		$('.nav-item:nth-child(' + (currentSec - 1) + ')').addClass('active');
		if currentSec == 1
			$('.navbar.navbar-fixed-top').addClass('hidden');
		else 
			$('.navbar.navbar-fixed-top').removeClass('hidden');


	updateScrollPos = () ->
		switch 
			when $(document).scrollTop() >= (sec1height + sec2height + sec3height)
				if currentSec != 4
					currentSec = 4;
					switchNav();
				break;
			when $(document).scrollTop() >= (sec1height + sec2height)
				if currentSec != 3
					currentSec = 3;
					switchNav();
				break;
			when $(document).scrollTop() >= sec1height
				if currentSec != 2
					currentSec = 2;
					switchNav();
				break;
			else 
				if currentSec != 1
					currentSec = 1
					switchNav();
				break;



