(function() {

  $(function() {
    return $('.artwork img').click(function(event) {
      var elementTop;
      elementTop = $(event.target).offset().top;
      console.log(elementTop);
      return console.log(event.y);
    });
  });

}).call(this);
