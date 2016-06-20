

var toggleLike = function(event) {
  var $card = $(event.target).closest('.card-content')
  var comedianId = $card.data('comedian-id');
  
  if ($(event.target).hasClass('gray')) {
    var settings = {
      url: '/user/likes',
      data: { comedian_id: comedianId },
      method: 'post'
    }
  }
  else { 
    var settings = {
      url: '/user/likes',
      data: { comedian_id: comedianId },
      method: 'delete'
    }
  }

  $(event.target).toggleClass('gray');
  
  $.ajax(settings).fail(function() {
    $(event.target).toggleClass('gray');
  });
}

