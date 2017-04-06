var app = Elm.Main.fullscreen();


app.ports.log.subscribe(function(formJson) {
  console.log(JSON.parse(formJson));
});

