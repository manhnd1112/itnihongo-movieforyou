$(document).ready(function() {
  // read more
  $('.more').readmore({
    speed: 100,
    lessLink: '<br><a href="#">Read less</a>',
    collapsedHeight: 272,
    embedCSS: true
  });

  // $('.filter').click(function() {
  //   $(this).parent().parent().children().find('.active').removeClass('active');
  //   $(this).addClass('active');
  // });

  // active li nav
  var url = window.location;
  $('ul.nav a[href="'+ url +'"]').parent().addClass('active');
  $('ul.nav a').filter(function() {
    return this.href == url;
  }).parent().addClass('active');


  // preview avatar
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

$(document).off('click', 'ul.pagination a');
$(document).on('click', 'ul.pagination a', function(e) {
  e.preventDefault();
  var url = $(this).attr('href');
  $('#list-reviews').load(url + ' #list-reviews', function() {
    $('.more').readmore({
      speed: 100,
      lessLink: '<a href="#"><br>Read less</a>',
      collapsedHeight: 272,
      embedCSS: true
    });
  });
});
