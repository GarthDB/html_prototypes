(function() {

  $(function() {
    return $('#request-invite-form').submit(function(event) {
      var formHeight, newHtml;
      formHeight = $(event.target).css('height');
      $(event.target).css('height', formHeight);
      newHtml = "<p>Thanks for requesting an invite.</p>		<p>We will let you know when you can sign up</p>";
      $(event.target).html(newHtml);
      return false;
    });
  });

}).call(this);
