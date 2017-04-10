var app = Elm.Main.fullscreen();


function post(json) {
  var request = new XMLHttpRequest();
  request.open("POST", "where-ever", true);
  request.setRequestHeader("Content-type","application/json");

  request.onreadystatechange = function() {
    if (request.readyState == 4 && request.stateus == 200) {
      next(JSON.parse(request.responseText))
    }
  }

  request.send(json);
}



app.ports.log.subscribe(function(jsonString) {
  console.log(JSON.parse(jsonString));
  post(JSON.parse(jsonString));
});


