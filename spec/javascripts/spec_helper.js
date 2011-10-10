require("/javascripts/jquery-1.6.4.min.js");

var ResourceRunExt = {
    dress: function(file) {
        beforeEach(function() {
            var oJsContainer = $("<div />", {
                id: "js_receptacle"
            });
            oJsContainer.append($("<script />", {
                src: file,
                type: "text/javascript"
            }));
            oJsContainer.insertBefore($("#test"));
        });
    },
    teardown: function(dom_id) {
        if (null == dom_id) dom_id = "js_receptacle";
        afterEach(function() {
            try {
                $("#" + dom_id).remove();
            } catch(e) {

            }
        });
    }
};