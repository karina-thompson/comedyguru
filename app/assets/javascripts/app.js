
$(document).ready(function() {
  $('.emoticon').on('click', addLaugh);
  $(".button-collapse").sideNav();

});




var addLaugh = function(event) {
  var $card = $(event.target).closest('.card-content')
  var comedianId = $card.data('comedian-id');
  
  if ($(event.target).hasClass('gray')) {
    var settings = {
      url: '/likes',
      data: { comedian_id: comedianId },
      method: 'post'
    }
  }
  else { 
    var settings = {
      url: '/likes',
      data: { comedian_id: comedianId },
      method: 'delete'
    }
  }


  $.ajax(settings).done(function() {
    $(event.target).toggleClass('gray');
});
}

