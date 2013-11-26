// you're poluting the global namespace
// you can use object literal, constructor functions, modules
$(document).ready(

  bindListeners

);

function bindListeners() {
  $('#new_gif').on('ajax:success', ajaxgif)
  $('div#rendergif').on('ajax:success', 'ul', ajaxgif)
  $('.new_gifcomment').on('ajax:success', ajaxgifcomment)
}


function ajaxgif(e, response) {
  $('div#rendergif').html(response)
}

function ajaxgifcomment(e, response) {
  $('div#rendergifcomments').html(response.gifcomment_add)
}
