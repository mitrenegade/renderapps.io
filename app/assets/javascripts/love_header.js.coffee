$(document).ready ->
  if $('.love-header .right-half')
  	$.each $('.love-header .right-half').find('h1'), (index, heading) ->
  		unless index >= ($('.love-header .right-half').find('h1').length - 2)
	  		setTimeout -> 
			    # $('.love-header .right-half h1').addClass('shifting-up');
			    prevHighlight = $('.love-header .right-half').find('h1.highlighted');
			    $(prevHighlight).removeClass('highlighted').addClass('unhighlighting');
			    $(prevHighlight).next('h1').addClass('highlighted');

			    # h12move = $('.love-header .right-half').find('h1:nth-of-type(' + index + ')');
			    h12move = $(heading);
			    $(h12move).removeClass('unhighlighting').addClass('removing');
			  , 4000*(index+1)

	    # setTimeout ->
	    # 	$(h12move).clone().removeClass('removing').appendTo('.love-header .right-half');
	    # , 1000
  return