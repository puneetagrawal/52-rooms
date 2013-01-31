
$(document).ready(function(){
  // price_list_show();
  var check_in=false;
  $("#check_in_hotel").click(function(){   
    $("#check_in_calendar").show('slow')
    $("#check_out_calendar").hide('slow')
    $("#room_type").children().remove()
    $("#show_subtotal").text("$0.00")
    $(this).text ("click on calendar to select")
    $("#check_out_hotel").text ("(click on calendar to select)")
  });

  $("#check_out_hotel").click(function(){ 
   if (check_in){   
     $("#check_out_calendar").show('slow')
     $("#check_in_calendar").hide('slow')
     $("#show_subtotal").text("$0.00")
     $("#room_type").children().remove()
     $(this).text ("(click on calendar to select)")

   }
 });

 $( "#ah_datepicker" ).datepicker({ 
  dateFormat: "yy-mm-dd",
  minDate:0,
   onSelect: function(dateText,inst){ 
     var al_date = new Date(dateText);
     al_date.setDate(al_date.getDate() + 1);         
     $("#al_datepicker").datepicker( "option", "maxDate", al_date)    
     
   }  
});       
  $( "#al_datepicker" ).datepicker({
    dateFormat: "yy-mm-dd",
    minDate:0,
    onSelect: function(dateText,inst){ 
     var ah_date = new Date(dateText);
     ah_date.setDate(ah_date.getDate() + 1);         
     $("#ah_datepicker").datepicker( "option", "minDate", ah_date)     
     
   }  
     })     

  var price_list 
  var SelectedDates = {};
  var SeletedText = {};
function price_list_show(){
   
  price_list = $('#data_price').val();
  SelectedDates = {};
  SeletedText = {};
  price_list = $.parseJSON(price_list);
  var cur = -1, prv = -1;
  for(i=0;i<=price_list.price.length;i++){
    SelectedDates[new Date(price_list.date[i])] = new Date(price_list.date[i]);
    SeletedText[new Date(price_list.date[i])] = price_list.price[i];
  }
}
  calendar_options = {   
    rangeSelect: true,
    dateFormat:"yy-mm-dd",
    minDate: 0,
    beforeShowDay: function(date) {     
      price_list_show()
      var Highlight = SelectedDates[date];
      var HighlighText = SeletedText[date];
      if (Highlight) {
        return [true, "Highlighted", HighlighText];

      }
      else {     
        if (Date.parse(new Date())<Date.parse(new Date(date)))
        {
          return [false, 'unavailable', ''];
        }
        else{
          return [false, '', ''];
        }
      }
    },  
    onSelect: function(dateText,inst){ 
     var nextDayDate = new Date(dateText);
     nextDayDate.setDate(nextDayDate.getDate() + 1);         
     $("#check_out_calendar").datepicker( "option", "minDate", nextDayDate).show('slow');
     $("#check_in_calendar").datepicker().hide('slow');
     $("#check_in_hotel").text(dateText)
     check_in=true;
   }   
 };

 calendar_check_out={   
  rangeSelect: true,
  dateFormat:"yy-mm-dd",
  minDate: 0,
  beforeShowDay: function(date) {
    price_list_show()
    var Highlight = SelectedDates[date];
    var HighlighText = SeletedText[date];
    var current_date=new Date($("#check_in_calendar").val())
    var checkindate = new Date(current_date.getMonth() + 1 + '/' + (current_date.getDate()) + '/' + current_date.getFullYear()); 
   
    if (Highlight ) {
      if (Date.parse(date)==Date.parse(checkindate)){       
       return [false, 'check_in_date', 'Check in'];
      }
      else{
      return [true, "Highlighted", HighlighText];
        
      }
    }
    else {      
        if (Date.parse(new Date())<Date.parse(new Date(date)))
        {
          return [false, 'unavailable', ''];
        }
        else{
          return [false, '', ''];
        }   
      
    }
  },
  onSelect: function(dateText,inst){    
    $("#check_out_hotel").text(dateText)
    $("#check_out_calendar").datepicker().hide('slow'); 
    calculate_subtotal();    
  }
}
$("#check_in_calendar").datepicker(calendar_options).show();
$("#check_out_calendar").datepicker(calendar_check_out).hide();


calculate_subtotal=function(){  
  var room_type_all = [1, 2, 3]
  $.ajax({
    url: "/calculate_subtotal",
    data: {
      "product_id": $("#product_id").val(),
      "check_in": $("#check_in_hotel").text(),
      "check_out": $("#check_out_hotel").text()
    }
  //   success:function(data){      
  //     response_data=$.parseJSON(data)     
  //     $("#room_type").children().remove()
  //     var append_html=""
  //     var length_array=response_data[0]["room_name"].length;
  //     if (length_array!=0){


  //       for(i=0;i<length_array;i++)
  //       {
  //         if (i==0){ 'checked="true"'
  //           checked='checked="true"'
  //         room_type_id=response_data[0]["room_type"][0]
  //       }
  //       else{
  //         checked=null
  //       }

  //       room_type_all = jQuery.grep(room_type_all, function(value) {
  //        return value != response_data[0]["room_type"][i];
  //      }); 
  //       $("#number_days").val(response_data[0]["days"])
  //       var room_qty=$("#order_qty").val()
  //       var price_room=parseFloat((response_data[0]["price"][i])/response_data[0]["days"]).toFixed(2)

  //       append_html += '<input type="radio" value="'+response_data[0]["room_type"][i]+'" name="room_type" id="room_type_'+response_data[0]["room_id"][i]+'" '+checked+'>'+
  //       '<span class="small">'+response_data[0]["room_name"][i] +'</span> <span>$'+price_room+'</span>'+
  //       '<input id="hidden_price_'+response_data[0]["room_id"][i]+'" type="hidden" value="'+price_room+'" name="product_id"><br>'
  //     }
  //     $("#show_subtotal").text("$"+((parseFloat(response_data[0]["price"][0]))*room_qty).toFixed(2))
  //     $("#room_type input").first().attr("checked","checked")
  //     $("#order_room_type_id").attr('value',room_type_id)

  //   }
  //   for(j=0;j<room_type_all.length;j++){
  //     if (room_type_all[j]==1){
  //       append_html += '<input type="radio" value="" disabled="" ><span class="small">Honeymoon suite</span><span class="small" style="margin-left:10px">Not available</span><br>'
  //     }
  //     else if (room_type_all[j]==2){
  //       append_html += '<input type="radio" value="" disabled=""><span class="small">Single Bed</span><span class="small" style="margin-left:10px">Not available</span><br>'
  //     }
  //     else if (room_type_all[j]==3){
  //       append_html += '<input type="radio" value="" disabled="" ><span class="small">Double Bed</span><span class="small" style="margin-left:10px">Not available</span><br>'
  //     }
      
  //   }
  //   $("#room_type").append(append_html)
  //   $("#room_type").show()
  //   $("#order_check_in_date").attr('value',$("#check_in_hotel").text())
  //   $("#order_check_out_date").attr('value',$("#check_out_hotel").text())

  // }

})
}



$('[id*=room_type_]').live('click',function(){
 var room_id=$(this).attr('id').split('room_type_')[1]
 var number_days=$("#number_days").val();
 var price=$("#hidden_price_"+room_id).val();
 var total_price=number_days*price; 
 var room_qty=$("#order_qty").val() 
 $("#order_room_type_id").attr('value',$(this).val()) 
 $("#show_subtotal").text('$'+((parseFloat(total_price))*room_qty).toFixed(2));
 
 var room_count = parseInt($("#hidden_avlbl_"+room_id).val());
 
 if ( room_qty <= room_count) {                                                   
  $("#no_room_alert").text(room_qty+" available.")
  $('#bookbtn').attr('disabled', false); 
 }
 else{
  $("#no_room_alert").text(room_qty+" rooms not available.")
  $('#bookbtn').attr('disabled', true); 
 }
 

})

$("#order_qty").live('focusout',function(){
  var room_qty=$(this).val();
  var number_days=$("#number_days").val();
  $('[id*=room_type_]').each(function(){      
   if ($(this).attr('checked')){
    id=$(this).attr('id').split('room_type_')[1]       
    var sub_total_price=parseFloat(number_days*room_qty*$('#hidden_price_'+id).val()).toFixed(2)
    //var hidden_avlbl=parseInt($("#hidden_avlbl_"+room_id).val());
    var room_count = parseInt($("#hidden_avlbl_"+id).val());
    if ( room_qty <= room_count) {
      $("#no_room_alert").text(room_qty+" available.")
      $('#bookbtn').attr('disabled', false); 
    }
    else {
      $("#no_room_alert").text(room_qty+" rooms not Available.")
      $('#bookbtn').attr('disabled', true); 
    }
    $("#show_subtotal").text('$'+sub_total_price)
  }

/* Rohit  */
  

})
})

$('.tab_nav>li.tab').addClass('active');
$('.tabcontent>li.tab_content').hide();
$('.tabcontent>li.tab_content:first-child').show();

$('.tab_nav .tab').click(function(){
	var tgt = '#' + $(this).attr('rel');
	$('.tab_nav .tab.active').removeClass('active');
	$('.tabcontent .tab_content').slideUp(100);
	$(this).addClass('active');
	$(tgt).slideDown(100);
 if ($(this).attr('rel')=="location_and_attractions"){
  initialize()
}
return false;
});


$('#slider_nav a:first-child').addClass('active');
$('#slider_nav a').click(function(){
	$('#slider_nav a.active').removeClass('active');
	$(this).addClass('active');
	var tgt = $(this).children('img').attr('src').replace('_thumb', '');
	console.log(tgt);
	$('#slider img.slider_image').attr('src', tgt);
	return false;
});



    // Home Page Featured
    $('.featured_nav_control').first().addClass('active');
    $('.featured_nav_control').click(function(){
     var new_src = $(this).attr('rel');
     $('.main_featured_image').attr('src', new_src);
     var new_sale = $(this).data('sale');
     var new_city = "// " + $(this).data('city') + ", " + $(this).data('country');	
     var new_name = $(this).data('name');
     var new_time = $(this).data('time');
     var new_path = $(this).data('url');
     $('.featured_nav_control').removeClass('active');
     $(this).addClass('active');
     $('.info, .info .big_discount').slideUp(20);
     $('.info .big_discount').text(new_sale + " % off");
     $('.info .hotel_name .location').text(new_city);
     $('.info .hotel_name .name').text(new_name);
     $('.info .timer .time').text(new_time);
     $('.info').attr('href', new_path);
     $('.info, .info .big_discount').slideDown(10);
   });
    

    /// Products Page Slider
    $('#price_slider').slider({
     range: true,
     min: 0,
     max: 10000,
     step: 100,
     values: [000, 5000],
     slide: function(e, ui){
       $('input#price_min').val(ui.values[0]),
       $('input#price_max').val(ui.values[1])
     }
   });
    var map;
    var geocoder;
    function initialize() {
      var lat=$("#product_latitude").val()
      var lng=$("#product_longitude").val()
      var zoom_val=$("#product_zoom").val() 
      var address=$("#product_address").val()

      geocoder = new google.maps.Geocoder();
      geocoder.geocode( { 'address': address}, function(results, status) {
        if( lat=='' && lng==''){
          lat=results[0].geometry.location["Ya"]
          lng=results[0].geometry.location["Za"]      
          zoom_val=14;
        }

        var myLatlng = new google.maps.LatLng(lat,lng);   
        var mapOptions = {
          center: myLatlng,
          zoom: parseInt(zoom_val),          
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById("map_canvas"),
          mapOptions);
        var marker = new google.maps.Marker({
          draggable: false,
          position: myLatlng, 
          map: map,
          icon: '/assets/icons/google_maps_marker.png',
          title: "hello"
        });
      })







      
    }

 
  });

