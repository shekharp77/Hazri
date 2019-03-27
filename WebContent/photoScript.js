$( document ).ready(function() {
	 $("#video").hide(0);
	 $("#about").hide(0);
	 $("#delmyvideo").hide(0);
	 $("#delphoto").hide(0);
	 $("#photolink").attr("class","nav-link active");
	 
	$("#photolink").click(function(){
		  $("#photolink").attr("class","nav-link active");
		  $("#delphotolink").attr("class","nav-link");
		  $("#videolink").attr("class","nav-link");
		  $("#aboutlink").attr("class","nav-link");
		  $("#delmyvideolink").attr("class","nav-link");
		  $("#photo").show();
		  $("#video").hide();
		  $("#about").hide();
		  $("#delphoto").hide();
		  $("#delmyvideo").hide();
	  });
	 $("#delmyvideolink").click(function(){
		  $("#videolink").attr("class","nav-link");
		  $("#photolink").attr("class","nav-link");
		  $("#aboutlink").attr("class","nav-link");
		  $("#delphotolink").attr("class","nav-link");
		  $("#delmyvideolink").attr("class","nav-link active");
		  $("#video").hide();
		  $("#photo").hide();
		  $("#about").hide();
		  $("#delphoto").hide();
		  $("#delmyvideo").show();
	  });
	  $("#videolink").click(function(){
		  $("#videolink").attr("class","nav-link active");
		  $("#photolink").attr("class","nav-link");
		  $("#aboutlink").attr("class","nav-link");
		  $("#delphotolink").attr("class","nav-link");
		  $("#delmyvideolink").attr("class","nav-link");
		  $("#video").show();
		  $("#photo").hide();
		  $("#about").hide();
		  $("#delphoto").hide();
		  $("#delmyvideo").hide();
	  });
	  $("#aboutlink").click(function(){
		  $("#videolink").attr("class","nav-link");
		  $("#photolink").attr("class","nav-link");
		  $("#delphotolink").attr("class","nav-link");
		  $("#aboutlink").attr("class","nav-link active");
		  $("#delmyvideolink").attr("class","nav-link");
		  $("#video").hide();
		  $("#photo").hide();
		  $("#about").show();
		  $("#delphoto").hide();
		  $("#delmyvideo").hide();
	  });
	  $("#delphotolink").click(function(){
		  $("#videolink").attr("class","nav-link");
		  $("#photolink").attr("class","nav-link");
		  $("#delphotolink").attr("class","nav-link active");
		  $("#aboutlink").attr("class","nav-link ");
		  $("#delmyvideolink").attr("class","nav-link");
		  $("#video").hide();
		  $("#photo").hide();
		  $("#about").hide();
		  $("#delphoto").show();
		  $("#delmyvideo").hide();
	  });
	 
});