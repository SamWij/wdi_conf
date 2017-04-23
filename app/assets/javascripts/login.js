function login(){
  $('#login-button').on('click',function(){
    $('#form-login').toggle("slow");
  })
}

$(document).on('turbolinks:load',login);
