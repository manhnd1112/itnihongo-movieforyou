$(document).ready(function() {
  $('#live-search_input').hsearchbox({
    url: $('#live-search_form').attr('action'),
    param: 'search',
    dom_id: '#live-search_dom',
    loading_css: '#live-search_loading',
    onInitSearch: function() {
      console.log("search init:" + this.url);
    },
    onStartSearch: function() {
      console.log("search start");
    },
    onFinishSearch: function() {
      console.log("search finish");
    }
  });
});
