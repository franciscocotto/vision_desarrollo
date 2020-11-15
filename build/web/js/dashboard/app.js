
// $.get("table_runner.php", function(data) {
//       $("#table_runner").html(data);
//  });

 $("#fin").click(function(){
		  var imagePreview =  $('#create-item').find('input[type=file]').val();
		  
		  if(imagePreview ==''){
			  window.location.reload(true);
			   
		  }
		
    }); 
	



$("#formUpdateOne_session").on('submit', function(e){
 		e.preventDefault();
  		  var $form = $(this);
 		  if(! $form.valid()) return false;
		$.ajax({
	    url : "editrunner.php",
	    type: "POST",
		data: new FormData(this),
		contentType: false,
         cache: false,
         processData:false,
	    success: function(data)
	    {
          $('#records_content').fadeOut(1100).html(data);
	    	$.get("table_runner.php", function(data)
	    	{	
	    		$("#table_runner").html(data); 	   		 		
	    	});

	    	$.magnificPopup.close({
						items: {
							src: '#update-item' 
						},
						type: 'inline'
					});
	    			$.magnificPopup.open({
									items: {
										src: '#modalFullColorSuccess' 
									},
									type: 'inline'
					});

	    	
	    	$(".profile-info").load(" .profile-info");
	    	$("#modi").load(" #modi");
	    	$("#log_image").load(" #log_image");
	    	$("#loadform").load(" #loadform");
			 
	    }
	});
});


$("#addEvents").on('submit', function(e){

	e.preventDefault();

 		var datos = jQuery(this).serialize();


    jQuery.ajax({
        type: "POST",
        url: "addEvent.php",
        data: datos,
        success: function(data)
        {

	    	$.magnificPopup.close({
						items: {
							src: '#ModalAdd' 
						},
						type: 'inline'
					});

	    	header('Location: '.$_SERVER['HTTP_REFERER']);
        },
        complete: function() {
					$.magnificPopup.close({
						items: {
							src: '#ModalAdd' 
						},
						type: 'inline'
					});
            }
    });

});


$("#addEvents2").on('submit', function(e){

			e.preventDefault();

 		var title = $('#addEvents').find('#title').val();		 
		var lugar =  $('#addEvents').find('#lugar').val();
		var color =  $('#addEvents').find('#color').val();
		var start =	$('#addEvents').find('#start').val();
		var end =  $('#addEvents').find('#end').val();	
		var hora =  $('#addEvents').find('#hora').val();	
		var clima =  $('#addEvents').find('#clima').val();
		var ritmo =  $('#addEvents').find('#ritmo').val();		
		var tiempo =  $('#addEvents').find('#tiempo').val(moment(tiempo).format('hh:mm:ss'));	
		var distancia =  $('#addEvents').find('#distancia').val();	
		var pp =  $('#addEvents').find('#pp').val();	
		var pr =  $('#addEvents').find('#pr').val();	
		var mv =  $('#addEvents').find('#mv').val();	
		var kcal =  $('#addEvents').find('#kcal').val();	
		var peso =  $('#addEvents').find('#peso').val();	
		$.ajax({
	    url : "addEvent.php",
	    type: "POST",
		data: {title, lugar,  color,  start, end, hora, clima, ritmo, tiempo, distancia, pp, pr, mv, kcal, peso},
		contentType: false,
         cache: false,
         processData:false,
        success: function(data)
        {

	    	$.magnificPopup.close({
						items: {
							src: '#ModalAdd' 
						},
						type: 'inline'
					});
        },
        complete: function() {
					$.magnificPopup.close({
						items: {
							src: '#ModalAdd' 
						},
						type: 'inline'
					});
            }
    });

});


