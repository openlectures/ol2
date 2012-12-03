$(".accordion").on("show hide", function(e) {
  return $(e.target).siblings(".accordion-heading").find(".accordion-toggle i").toggleClass("icon-caret-down icon-caret-right");
});
