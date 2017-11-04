$(document).ready(function(){
  $('.flash-push').fadeOut(4000);

  $('.new-movies-slide').owlCarousel({
    startPosition: 0,
    loop: false,
    lazyLoad: true,
    items: 5,
    rewind: true,
    autoplay: true,
    stopOnHover: false,
    // autoplaySpeed: 100,
    margin: 30,
    nav: true,
    navSpeed: 500,
    slideSpeed: 200,
    paginationSpeed: 800,
    rewindSpeed: 1000,
    navText: ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
    responsive: {
      0: {
        items: 1
      },
      480: {
        items: 2
      },
      768: {
        items: 3
      },
      1024: {
        items: 4
      },
      1300: {
        items: 5
      }
    }
  });

  $('.top-movies-slide').owlCarousel({
    startPosition: 0,
    loop: false,
    lazyLoad: true,
    items: 5,
    rewind: true,
    margin: 30,
    nav: true,
    navSpeed: 500,
    slideSpeed: 200,
    paginationSpeed: 800,
    rewindSpeed: 1000,
    navText: ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
    responsive: {
      0: {
        items: 1
      },
      480: {
        items: 2
      },
      768: {
        items: 3
      },
      1024: {
        items: 4
      },
      1300: {
        items: 5
      }
    }
  });

  $('.reviews-slide').owlCarousel({
    margin: 0,
    loop: true,
    lazyLoad: true,
    rewind: true,
    items: 1,
    nav: true,
    navText: ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"]
  });

  $('.trending-title').fitText(1.2,{minFontSize: '20px', maxFontSize: '28px'});
  $('.trending-content').fitText(1,{minFontSize: '14px', maxFontSize: '16px'});
  $('.home-review-title').fitText(1.2,{minFontSize: '26px', maxFontSize: '36px'});
  $('.review-content').fitText(1.2,{minFontSize: '16px', maxFontSize: '18px'});
  $('.movie-data').fitText(1.2,{minFontSize: '18px', maxFontSize: '22px'});
  $('.review-title').fitText(0.8,{minFontSize: '20px', maxFontSize: '30px'});

  $('.breadcrumbs li a').each(function(){
    var breadWidth = $(this).width();
    if($(this).parent('li').hasClass('active') || $(this).parent('li').hasClass('first')){
    } else {
      $(this).css('width', 75 + 'px');
      $(this).mouseover(function(){
        $(this).css('width', breadWidth + 'px');
      });
      $(this).mouseout(function(){
        $(this).css('width', 75 + 'px');
      });
    }
  });
});

$(document).on('click', '#shareBtn', function() {
  FB.ui({
    method: 'share',
    display: 'popup',
    href: window.location.href,
  }, function(response){});
});

$(document).on('click', '#share-movie', function() {
  FB.ui({
    method: 'share',
    display: 'popup',
    href: window.location.href
  }, function(response){});
});

// notification
$(document).on('click', '.notify', function(){
  var id = $(this).attr('id');
  var element = this;
  $.ajax({
    beforeSend: function (xhr) {
      xhr.setRequestHeader('X-CSRF-Token',
        $('meta[name="csrf-token"]').attr('content'));
    },
    type: 'PATCH',
    url: '/notifications/' + id,
    success: function(data){
      $(element).addClass('unread');
      $('.notification-counter').html(data.unread);
    }
  });
});
