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
    margin: 20,
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
    margin: 20,
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

  // fit text
  $.fn.fitText = function( kompressor, options ) {
    var compressor = kompressor || 1,
        settings = $.extend({
          'minFontSize' : Number.NEGATIVE_INFINITY,
          'maxFontSize' : Number.POSITIVE_INFINITY
        }, options);

    return this.each(function(){
      var $this = $(this);
      var resizer = function () {
        $this.css('font-size', Math.max(Math.min($this.width() / (compressor*10), parseFloat(settings.maxFontSize)), parseFloat(settings.minFontSize)));
      };

      resizer();

      $(window).on('resize.fittext orientationchange.fittext', resizer);
    });
  };

  $('.trending-title').fitText(1.2,{minFontSize: '20px', maxFontSize: '28px'});
  $('.trending-content').fitText(1,{minFontSize: '14px', maxFontSize: '16px'});
  $('.home-review-title').fitText(1.2,{minFontSize: '26px', maxFontSize: '36px'});
  $('.review-content').fitText(1.2,{minFontSize: '16px', maxFontSize: '18px'});
  $('.movie-data').fitText(1.2,{minFontSize: '18px', maxFontSize: '22px'});
  $('.review-title').fitText(0.8,{minFontSize: '20px', maxFontSize: '30px'});
});
