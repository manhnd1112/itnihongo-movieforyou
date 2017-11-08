$(document).ready(function(){
  if (window.user_signed_in) {
    $('#like-login').hide();
    $('#likeBtn').show();
    $('#unlikeBtn').show();
  }
  else {
    $( "#like-login" ).click(function() {
      alert("Please login!");
      window.location.href = '/users/sign_in';
    });
  }
});

$(document).on('ajax:success', 'a.vote', function() {
  var votes = '.votes-count';
  var score = $(votes).data('id');
  $(votes).data('id', score + 1);
  $('#likes').load(document.URL + ' #likes');
});
