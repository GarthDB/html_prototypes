(function() {

  $(function() {
    return $('.artwork img').click(function(event) {
      console.log($(event.target).x);
      return console.log(event);
    });
  });

}).call(this);
