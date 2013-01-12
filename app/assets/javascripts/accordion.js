$(".accordion").on("show hide", function(e) {
  return $(e.target).siblings(".accordion-heading").find(".accordion-toggle i").toggleClass("icon-angle-down icon-angle-right");
});
