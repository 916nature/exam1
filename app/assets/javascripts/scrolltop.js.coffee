ready = ->
  $(window).scroll ->
    element = $('#page-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    if height > 400
      element.fadeIn() if !visible
    else
      element.fadeOut()
  #// move-page-topというdiv要素をクリックした時に動作する
  $(document).on 'click', '#move-page-top', ->
    $('html, body').animate({ scrollTop: 0 }, 'fast')

$(document).ready(ready)
$(document).on('page:load', ready)

ready = ->
  $(window).scroll ->
    element = $('#page-blog-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    if height > 100
      element.fadeIn() if !visible
    else
      element.fadeOut()
  $(document).on 'click', '#move-page-blog', ->
    $('html, body').animate({ scrollTop: 0 }, 'fast')

$(document).ready(ready)
$(document).on('page:load', ready)