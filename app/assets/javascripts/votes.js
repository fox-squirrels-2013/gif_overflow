$(document).ready(

  initialize

);

function initialize() {

function ajaxvote(e, response, textStatus) {
  $(this).closest('li').find('span').remove()
  $(this).closest('li').find('a').after('<span>'+response.voteCount+'</span>')
}

function ajaxgif(e, response, textStatus) {
  $('ul.index_gifs').append(response.gif_add)
}

$('.index_gifs').on('ajax:success', 'li', ajaxvote)
$('#new_gif').on('ajax:success', ajaxgif)


}