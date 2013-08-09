$(document).ready(function(){
  console.log("I am in Casanova!");
  $('#new_answer').submit(function(submitForm){
    submitForm.preventDefault();
    console.log("I submitted the form!");

    var url = $(this).attr('action');
    var data = ({ 'body' :  $('textarea').val() })
    console.log(url);
    console.log(data);

    $.post(url, data, function(response){
      console.log(response);
    }, "json");

  });
});