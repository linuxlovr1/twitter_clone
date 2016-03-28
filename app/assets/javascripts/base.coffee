$(document).ready ->

  $('.flash').show ->
    flash = $(@)
    setTimeout ->
      flash.slideToggle()
    , 5000