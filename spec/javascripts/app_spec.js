describe('greeting', function() {
  template('app_template.html');
  ResourceRunExt.dress("/javascripts/coffee-scripts/app.js");
  ResourceRunExt.teardown();

  it("should see greeting", function() {
    // we can use App.setting because we compile coffee-script with -b
    expect($("#main").text()).toEqual("Sinatra say:" + App.greeting);
    expect($("#main_click").text()).toEqual("");
    $("#main").trigger("click");
    expect($("#main_click").text()).toEqual("clicked");

  });
});

describe('other', function() {
  template("other_template.html");
  it("should see other", function(){
    expect($("#main").text()).toEqual("other");
  });
});
