var app = Elm.Main.fullscreen();


app.ports.log.subscribe(function(jsonString) {
  console.log(JSON.parse(jsonString));
});

