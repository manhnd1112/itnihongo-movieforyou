$(document).on('click', '.submit-feedback', function(){
  var formData = new FormData($('form')[0]);
  var url = '/feedbacks/'

  $.ajax({
    beforeSend: function(xhr){
      xhr.setRequestHeader('X-CSRF-Token',
        $('meta[name="csrf-token"]').attr('content'));
    },
    type: 'POST',
    url: url,
    processData: false,
    contentType: false,
    data: formData,
    success: function() {
      location.reload();
      alert("Thank for your feedback!");
    }
  });
});
