$(document).on('turbolinks:load', function(){
  $('.flash-push').fadeOut(4000);

  $('.new-movies-slide').owlCarousel({
    loop: true,
    lazyLoad: true,
    items: 5,
    autoplay: true,
    autoplaySpeed: 500,
    margin: 10,
    nav: true,
    navSpeed: 500,
    navText: ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
    responsive: {
      0: {
        items: 2
      },
      768: {
        items: 4
      },
      1024: {
        items: 5
      },
      1440: {
        items: 5
      }
    }
  });

  $('.reviews-slide').owlCarousel({
    startPosition: 1,
    margin: 0,
    loop: false,
    lazyLoad: true,
    rewind: true,
    items: 1,
    autoplay: true,
    autoplaySpeed: 500,
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

  $('h4').fitText();
});
