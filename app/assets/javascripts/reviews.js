$(document).ready(function() {
  $('.select-movie').select2({
    theme: 'bootstrap'
  });

  if ($('textarea').length > 0) {
    var data = $('.ckeditor');
    $.each(data, function(i) {
      CKEDITOR.replace(data[i].id)
    });
  }

  CKEDITOR.config.height = 500;
});

// preview image
$(document).ready(function() {
  var onAddFile;
  onAddFile = function (event) {
    var file, thumbContainer, url;
    file = event.target.files[0];
    url = URL.createObjectURL(file);
    thumbContainer = $(this).parent().siblings('div.thumb');
    if (thumbContainer.find('img').length === 0) {
      return thumbContainer.append('<img src="' + url + '" />');
    } else {
      return thumbContainer.find('img').attr('src', url);
    }
  };
  $('input[type=file]').each(function () {
    return $(this).change(onAddFile);
  });
  $('body').on('cocoon:after-insert', function (e, addedPartial) {
    return $('input[type=file]', addedPartial).change(onAddFile);
  });


  document.querySelector('html').classList.add('js');
  var fileInput = document.querySelector('.input-file'),
      button = document.querySelector('.input-file-trigger'),
      the_return = document.querySelector('.file-return');
  button.addEventListener('keydown', function (event) {
    if (event.keyCode == 13 || event.keyCode == 32) {
      fileInput.focus();
    }
  });
  button.addEventListener('click', function () {
    fileInput.focus();
    return false;
  });
  fileInput.addEventListener('change', function () {
    the_return.innerHTML = this.value;
  });
});

$(document).ready(function() {
  var validobj = $('.review-form').validate({
    onkeyup: false,
    errorClass: 'myErrorClass',
    errorPlacement: function (error, element) {
      var elem = $(element);
      error.insertAfter(element);
    },

    highlight: function (element, errorClass, validClass) {
      var elem = $(element);
      if (elem.hasClass('select2-offscreen')) {
        $('#s2id_' + elem.attr('id') + ' ul').addClass(errorClass);
      } else {
        elem.addClass(errorClass);
      }
    },

    unhighlight: function (element, errorClass, validClass) {
      var elem = $(element);
      if (elem.hasClass('select2-offscreen')) {
        $('#s2id_' + elem.attr('id') + ' ul').removeClass(errorClass);
      } else {
        elem.removeClass(errorClass);
      }
    }
  });

  $(document).on('change', '.select2-offscreen', function () {
    if (!$.isEmptyObject(validobj.submitted)) {
      validobj.form();
    }
  });

  $(document).on('select2-opening', function (arg) {
    var elem = $(arg.target);
    if ($('#s2id_' + elem.attr('id') + ' ul').hasClass('myErrorClass')) {
      $('.select2-drop ul').addClass('myErrorClass');
    } else {
      $('.select2-drop ul').removeClass('myErrorClass');
    }
  });
});
