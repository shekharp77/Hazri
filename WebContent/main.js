$( document ).ready(function() {
	$('#jumbo').hide(0);
	$('#contact').hide(0);
	$('#about').hide(0);
	$('#navbar').hide(0);
	$("body").css({"background-color":"white"}); 
		
	
	
  $("#workhousepro")
    .animate({
    	marginTop: "10%",
      width: "100%"
    }, {
      queue: false,
      duration: 4000
    })

    .animate({ fontSize: "64px" }, 1500 )
    .animate({ borderRightWidth: "0px" }, 1500 )


  $( "#motto" )
    .animate({ width: "100%" }, 1000 )
    .animate({ fontSize: "24px" }, 1000 )
    .animate({ borderLeftWidth: "0px" }, 1000,
     function () {
    			$('#motto').fadeOut("slow");
    			$('#share').fadeOut("slow");
   				$('#workhousepro').fadeOut("slow", function() {
   					$("body").css({"background":"rgba(206, 206, 206, 0.78)"},1000,function(){	
   					}); 	
   					$('#jumbo').fadeIn(1600).delay(1000).removeAttr('hidden');
   					$("#worklink").attr("class","nav-link active");
   				});	
    });
	  	$("#contactlink").click(function(){
	  		$("#contactlink").attr("class","nav-link active");
	  		$("#worklink").attr("class","nav-link");
	  		$("#aboutlink").attr("class","nav-link");
			  $("#contact").fadeIn();
			  $("#work").fadeOut();
			  $("#about").fadeOut();	  
	});
	  $("#worklink").click(function(){
		  $("#worklink").attr("class","nav-link active");
		  $("#contactlink").attr("class","nav-link");
	  		$("#aboutlink").attr("class","nav-link")
		  $("#work").fadeIn();
		  $("#contact").fadeOut();
		  $("#about").fadeOut();
	  });
	  $("#aboutlink").click(function(){
		  $("#aboutlink").attr("class","nav-link active");
		  $("#worklink").attr("class","nav-link");
	  		$("#contactlink").attr("class","nav-link")
		  $("#about").show();
		  $("#work").hide();
		  $("#contact").hide();
	  });
  
});
 
