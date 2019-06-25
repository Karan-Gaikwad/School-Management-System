   
  
    $.ajax({
             Method:'GET',
             url : "http://localhost:8000/api/Departmentapi",
              
             success : function (data) {
                       console.log(data);
                       console.log("Success");
                    },
            error : function (error_data){
                  console.log("error")
                    }

                 });
   
   var btn = document.getElementById("btn");
   var url = "http://localhost:8000/api/Departmentapi";

   btn.addEventListener("click", function(){
       var ourRequest = new XMLHttpRequest();
       ourRequest.open("GET",url);
       ourRequest.onload = function(){
          console.log(ourRequest.responseText);
          var ourData = JSON.parse(ourRequest.responseText);
          console.log(ourData);

       }
       ourRequest.send();

   })