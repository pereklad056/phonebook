$(function() {

	// display in the main page tabs

    	$("#tabs").tabs();

        $("#target").submit(function(event) {

   			var $data = {};

  			$("#target").find('input').each(function(){

  				$data[this.name] = $(this).val();

  			});

 			event.preventDefault();
 			
		});
  
  // ajax requests after the person's name is clicked in the main page
  
    // $("#publicPhonebookTab").click(function(){
    //   $.ajax({
    //   type: "POST",
    //   url: "table.php",
    //   success: function(html){
    //       $("#table").html(html);
    //           }
    //      });
    //    return false;
    // });

   
    $("#loginTab").click(function(){
      $.ajax({
      type: "POST",
      url: "login.php",
      success: function(html){
          $("#tabs-2").html(html);
              }
         });
       return false;
    });

   

    $(".hide_view_details").click(function(){


      $(".hide_view_details").each(function(){
        $(this).html("View Details");
      });
      $(this).html("Hide Details");    


      var id = $(this).attr("id"); // получиение id на нажатого контакта для последующего вывода жеталей этого контакта в index.php
      // alert(id);

      $.ajax({
        type: "POST",
        url: "table.php",
        data: "id=" + id,
        success: function(data){
            $("#tableoutput").html(data);
            }
          });
      return false;


      // var id = $(this).attr("id");
      //  alert(id);
      // $.ajax({
      //   type: "POST",
      //   url: "table.php",
      //   data: "id=" + id,
      //   // dataType: "html",
      //   success: function(data){
      //     // $("id").html(data);
      //     $("#contact").html(data);
      //          },
      //     });
      //   return false;     
       });
   

  });