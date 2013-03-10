$ ->
	$('#request-invite-form').submit (event) ->
		formHeight = $(event.target).css('height')
		$(event.target).css('height', formHeight)
		newHtml = "<p>Thanks for requesting an invite.</p>
		<p>We will let you know when you can sign up</p>"
		$(event.target).html(newHtml)

		return false

