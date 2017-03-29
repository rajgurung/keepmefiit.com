# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  console.log('ok')
  # https://css-tricks.com/jquery-coffeescript/

  $('#new_user_workout').hide()

  $(document).on 'click', '.select_workout', ->
    console.log('foo')
    console.log(this.id)
    $('#workout_grid').hide()
    $('#new_user_workout').fadeIn(500)


  $(document).on 'click', '#search_id', ->
    $('#new_user_workout').hide()