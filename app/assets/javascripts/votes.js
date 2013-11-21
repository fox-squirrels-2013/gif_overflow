$(document).ready(function() {

function onSuccess(e, response, textStatus) {
  $(this).closest('li').find('span').remove()
  $(this).closest('li').find('a').after('<span>'+response.voteCount+'</span>')
}

function Succeeded(e, response, textStatus) {
  debugger
}



$('.button_to').on('ajax:success', onSuccess)

$('#new_gif').on('ajax:success', Succeeded)


});