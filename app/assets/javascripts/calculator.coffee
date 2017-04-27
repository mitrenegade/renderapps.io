@calculatorLoader = () ->
	$('.option').click(() ->
		$(this).toggleClass('active')
	)