//= require best_in_place

$(document).ready(function(){
  $('.best_in_place').best_in_place();
  // $('.best_in_place').change(function() {
  //   var comment_id = $('.post-content').data('id');
  //   var editButton = '.edited-' + comment_id;
  //   $.ajax({
  //     success: function() {
  //     }
  //   });
  // });
});

$(document).on('click', '.create-comment', function(event) {
  event.preventDefault();

  var user_id = $('#user-id').val();
  var review_id = $('#review-id').val();
  var content = $('.text-content').val();
  var url = '/reviews/'+ review_id + '/comments/';

  $.ajax({
    beforeSend: function (xhr) {
      xhr.setRequestHeader('X-CSRF-Token',
          $('meta[name="csrf-token"]').attr('content'));
    },
    type: 'POST',
    url: url,
    data: {
      comment: {
        content: content,
        review_id: review_id,
        user_id: user_id
      }
    },
    success: function () {
      location.reload();
      // $('.comments').load(document.URL + ' .comments');
    }
  });
});

$(document).on('click', '.delete', function() {
  var commentId = $(this).data('id');
  var reviewId = $(this).attr('value');
  var url = '/reviews/' + reviewId + '/comments/' + commentId;
  var currentPage = $(this).data('page');
  var newhref = location.pathname + '?page=' + currentPage;

  $.ajax({
    beforeSend: function (xhr) {
      xhr.setRequestHeader('X-CSRF-Token',
          $('meta[name="csrf-token"]').attr('content'));
    },
    type:'DELETE',
    url: url,
    data: {
      comment: {
        id: commentId
      }
    },
    success: function() {
      window.location.href = newhref;
    }
  });
});

$('#comment-list').off('click', 'ul.pagination a');
$('#comment-list').on('click', 'ul.pagination a', function(e) {
  e.preventDefault();
  var url = $(this).attr('href');
  $('#comment-list').load(url + ' #comment-list', function() {
    $('.best_in_place').best_in_place();
    window.history.pushState(url, window.title, url);
  });
  return false;
});

$(window).bind('popstate', function() {
  var url = location.href;
  $('#comment-list').load(url);
});
