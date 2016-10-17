$(document).ready(function() {
	$('.flip').on('mouseenter mouseleave', function(){
		$(this).find('.card-flippable').toggleClass('flipped');
	});
});