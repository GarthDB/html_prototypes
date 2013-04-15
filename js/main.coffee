$ ->
	$('.artwork img').click (event) ->
		elementTop = $(event.target).offset().top
		console.log elementTop
		console.log event.y