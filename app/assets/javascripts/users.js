$(document).ready(function() {
  // read more
  $('.more').readmore({
    speed: 100,
    lessLink: '<br><a href="#">Read less</a>',
    collapsedHeight: 260,
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
});

$(document).off('click', 'ul.pagination a');
$(document).on('click', 'ul.pagination a', function(e) {
  e.preventDefault();
  var url = $(this).attr('href');
  $('#list-reviews').load(url + ' #list-reviews', function() {
    $('.more').readmore({
      speed: 100,
      lessLink: '<a href="#"><br>Read less</a>',
      collapsedHeight: 260,
      embedCSS: true
    });
  });
});
