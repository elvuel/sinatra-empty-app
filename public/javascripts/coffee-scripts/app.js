var App;
App = {
  greeting: "hello!"
};
$(function() {
  return $("#main").append(App.greeting);
});