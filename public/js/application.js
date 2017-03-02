$(document).ready(function() {
  // Este código corre después de que `document` fue cargado(loaded)
  // completamente.
  // Esto garantiza que si amarramos(bind) una función a un elemento
  // de HTML, éste ya exista en la página.
  $( "form" ).on( "submit", function( event ) {
    event.preventDefault();
    var info = $( this ).serialize();
    $.post('/abuelita', info, function(data){
      $('#answer').html(data)
    });
  });

});
