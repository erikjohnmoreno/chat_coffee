$(document).ready ->
  $('#submit-form1').click ->
    something()
    return

  $('#submit-form2').click ->
    another()
    return

  display = (data) ->
    $('.mensahe').append "<br> #{data.content}"

  something = ->
    $.ajax "/messages",
      method: "post"
      data: { mensahe: $('#message_content1').val()}
      success: (data) ->
        display(data)

  another = ->
    $.ajax "/messages",
      method: "post"
      data: { mensahe: $('#message_content2').val()}
      success: (data) ->
        display(data)
