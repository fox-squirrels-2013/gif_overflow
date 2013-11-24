$(document).ready(

  bindListeners

);

function bindListeners() {
$('#new_gif').on('ajax:success', ajaxgif)
$('div#rendergif').on('ajax:success', 'ul', ajaxvote)
$('.new_gifcomment').on('ajax:success', ajaxgifcomment)
}


function ajaxgif(e, response, textStatus) {
  $('div#rendergif').html(response.gif_add)
}

function ajaxvote(e, response, textStatus) {
  $('div#rendergif').html(response.vote_add)
}

function ajaxgifcomment(e, response, textStatus) {

  $('div#rendergifcomments').html(response.gifcomment_add)
}
