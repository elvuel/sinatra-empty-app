App =
  greeting: "hello!"
$ ->
  $("#main").append App.greeting
  $("#main").click ->
    $("#main_click").text("clicked")