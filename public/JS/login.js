$(document).ready(function(){
  //Will make sure that jquery has been loaded inspect
  console.log("jquery loaded");
  $( "#loginb" ).click(function() {
    //This will be used to check the login fields then send the infomation to the backend
    //Check Username and Password field are not empty
    var username = $( "#user" ).val();
    var password = $( "#pass" ).val();
    console.log(username + " " + password);
    if(username.length > 0 && password.length > 0)
    {
      //Send infomation to backend
      var message = '{"user":{"username":"' + username + '","password":"' +  password + '"}}'


        $.ajax({
            url: 'http://localhost:3000/api/users/login',
            type: 'POST',
            dataType: 'html',
            contentType: "application/json; charset=utf-8",
            data: message
          }).done(function(response) {
            $("body").html(response);
          }).fail(function() {
              console.log("error");
          });

    }
    else {
      alert("Error");
    }



  });
});
