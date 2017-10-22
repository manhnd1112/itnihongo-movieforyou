$(document).on('click', '.submit-rate', function(e){
  e.preventDefault();
  var score = $("input[name='rate[score]']").val();
  var movie = $('.current-movie-id').attr('id');
  var message = $('.rate-message').val();
  var is_rate = $('#is_rate').val();

  if(is_rate) {
    $.ajax({
      beforeSend: function(xhr){
        xhr.setRequestHeader('X-CSRF-Token',
          $('meta[name="csrf-token"]').attr('content'));
      },
      type: 'POST',
      url: '/movies/' + movie + '/rates',
      data: {
        rate: {
          score: score,
          message: message
        }
      },
      success: function() {
        // $('#rate').load(document.URL + ' #rate');
        location.reload();
      }
    });
  }
});

$(document).on('click', '.bookmark-btn', function(e){
  var movie = $('.current-movie-id').attr('id');

  $.ajax({
    beforeSend: function(xhr){
      xhr.setRequestHeader('X-CSRF-Token',
        $('meta[name="csrf-token"]').attr('content'));
    },
    type: 'POST',
    url: '/movies/' + movie + '/bookmarks',
    data: {
      bookmark: {
        movie_id: movie
      }
    },
    success: function() {
      $('#bookmark').load(document.URL + ' #bookmark');
    }
  });
});

$(document).on('click', '.unbookmark-btn', function(){
  var movie = $('.current-movie-id').attr('id');
  var bookmark = $('.current-bookmark').attr('id');

  $.ajax({
    beforeSend: function(xhr){
      xhr.setRequestHeader('X-CSRF-Token',
        $('meta[name="csrf-token"]').attr('content'));
    },
    type: 'DELETE',
    url: '/movies/' + movie + '/bookmarks/' + bookmark,
    data: {
      bookmark: {
        id: bookmark
      }
    },
    success: function() {
      $('#bookmark').load(document.URL + ' #bookmark');
    }
  });
});

$(document).ready(function() {
  $('.average-rate').raty({
    path: '/assets/',
    readOnly: true,
    number: 10,
    noRatedMsg: 'Not rated yet!',
    score: function() {
      return $(this).attr('data-score');
   }
  });
  
  $('#star-rating').raty({
    path: '/assets',
    scoreName: 'rate[score]',
    number: 10,
    half: true,
    noRatedMsg: 'Not rated yet!',
    target: '#hint',
    hints: ['Appalling', 'Horrible', 'Very bad', 'Bad', 'Average', 'Fine', 'Good', 'Very good', 'Great', 'Masterpiece'],
    score: function() {
      return $(this).attr('data-score');
    }
  });


  $('.bar').each(function() {
    var $el = $(this);
    $el.progressbar({
      value: $el.data("progress-value")
    });
  });
});
