var App;
App = {
  greeting: "hello!"
};
$(function() {
  $("#main").append(App.greeting);
  return $("#main").click(function() {
    return $("#main_click").text("clicked");
  });
});