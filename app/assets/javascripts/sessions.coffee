# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  setTimeout (->
    $('.fadeaway').fadeOut()
    return
  ), 3000
  setTimeout (->
    $('.invalid_login').fadeOut()
    return
  ), 3000
  return
