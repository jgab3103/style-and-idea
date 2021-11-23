$(document).ready(function(){


  $("#myInput").on("keyup", function() {
     var value = $(this).val().toLowerCase();
     $("#bob li" ).filter(function() {
       $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
     });
   });
   $('.collapsible').collapsible();

     $('.tabs').tabs();
      $('.sidenav').sidenav();
       $('.datepicker').datepicker();


 });
