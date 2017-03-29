(function() {
  $(function() {
    console.log('ok');
    $('#new_user_workout').hide();
    $(document).on('click', '.select_workout', function() {
      console.log('foo');
      console.log(this.id);
      $('#workout_grid').hide();
      return $('#new_user_workout').fadeIn(500);
    });
    return $(document).on('click', '#search_id', function() {
      return $('#new_user_workout').hide();
    });
  });

}).call(this);
