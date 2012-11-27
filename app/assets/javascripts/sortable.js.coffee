$(document).ready ->
  $('.sortable').sortable
    axis: 'y'
    handle: '.handle'
    items: 'tr'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
