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

$(document).on('click', '.un-bookmark-btn', function(){
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

  $('.suggest-receiver-select').select2({
    tags: false,
    theme: 'bootstrap'
  });

  if (window.user_signed_in) {
    $('#bookmark-login').hide();
    $('#bookmark').show();
  }
  else {
    $( "#bookmark-login" ).click(function() {
      alert("Please login!");
      window.location.href = '/users/sign_in';
    });
  }
});

$(document).on('click', '.btn-suggest-movie', function() {
  if (window.user_signed_in) {
    $('.suggest-movie-modal').modal();
  }
  else {
    alert("Please login!");
    window.location.href = '/users/sign_in';
  }
});

$(document).on('click', '.btn-send-suggest', function() {
  var to_id = $('#suggest_receiver').val();
  var content = $('.suggest-content').val();
  var movie_id = $(this).attr('data-movie-id');
  var link = '/movies/' + movie_id + '/suggest_movies';
  $.ajax({
    beforeSend: function(xhr){
      xhr.setRequestHeader('X-CSRF-Token',
        $('meta[name="csrf-token"]').attr('content'));
    },
    type: 'POST',
    url: link,
    data: {
      suggest_movie: {
        to_id: to_id,
        content: content
      }
    },
    success: function(e) {
      $('.modal-suggest-result').html(e);
      $('.suggest-receiver-select').val('').trigger('change');
      $('.suggest-content').val('');
      $('.suggest-movie-modal').modal('hide');
      $('#suggest-success-modal').modal();
    }
  });
});
