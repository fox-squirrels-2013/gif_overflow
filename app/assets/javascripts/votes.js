$(document).ready(

  bindListeners

);

function bindListeners() {

  $('.index_gifs').on('ajax:success', 'li', ajaxvote) //placed event listener on class ul and its children
  $('#new_gif').on('ajax:success', ajaxgif)
  $('.new_gifcomment').on('ajax:success', gifresponse) // placed event listener on form

}

function ajaxvote(e, response, textStatus) {

  $(this).closest('li').find('span').remove() //checks to see if there was already a span tag, if so, deletes it.
  $(this).closest('li').find('a').after('<span>'+response.voteCount+'</span>')

  var num = response.voteCount
  $(this).closest('li').attr('data-votecount', num) //change data-votecount dynamically with every click
}

function ajaxgif(e, response, textStatus) {
  $('ul.index_gifs').prepend(response.gif_add) //the key gif_add has a value which is a partial(check controller)
}

function gifresponse(e, response, textStatus) {
  $('ul.respond_gif').append('<img src='+response.link+'>')
}

