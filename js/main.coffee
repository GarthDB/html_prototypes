$ ->
	$('.artwork img').click (event) ->
		console.log $(event.target).x
		console.log event