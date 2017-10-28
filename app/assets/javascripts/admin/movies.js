//= require select2/dist/js/select2.min
//= require propellerkit/components/select2/js/pmd-select2
//= require moment/min/moment.min
//= require propellerkit/components/datetimepicker/js/bootstrap-datetimepicker
//= require cocoon
//= require jquery.purr
//= require best_in_place
//= require_self

$(document).ready(function() {
  $('.best_in_place').best_in_place();
  $('.best_in_place').change(function () {
    $.ajax({
      success: function () {
      }
    });
  });

  $('.select-actors').select2({
    tags: false,
    theme: 'bootstrap'
  });

  $('.select-country').select2({
    theme: 'bootstrap'
  });

  $('.select-types').select2({
    tags: false,
    theme: 'bootstrap'
  });

  $('#datepicker-realease').datetimepicker({
    format: 'YYYY-MM-DD'
  });


  function readURL(input) {
    if (input.files && input.files[0]) {
      if (/\.(jpe?g|png|gif)$/i.test(input.files[0].name)) {
        var reader = new FileReader();
        reader.onload = function(e) {
          $('#previewHolder').attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
      } else {
        alert($('#error').attr('value'));
      }
    }
  }
  $('#filePhoto').change(function() {
    $('#previewHolder').show();
    readURL(this);
    $('#old-avatar').hide();
  });
});
