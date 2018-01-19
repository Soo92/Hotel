<%@page import="hotel.RoomBean"%>
<%@page import="hotel.CartBean"%>
<%@page import="java.util.Vector"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="roommgr" class="hotel.MemberMgr" />
<jsp:useBean id="rmmgr" class="hotel.RoomMgr" />
<% rmmgr.checkRoom(); 
	String idk = session.getAttribute("admin")+"";
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminHotel | Calendar</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
  <!-- fullCalendar -->
  <link rel="stylesheet" href="../../bower_components/fullcalendar/dist/fullcalendar.min.css">
  <link rel="stylesheet" href="../../bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<%@include file="../../include/header.jsp"%>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Calendar
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Calendar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3">
          <div class="box box-solid">
            <div class="box-header with-border">
              <h4 class="box-title">Event Handler</h4>
              <a class="fa fa-save" style="float: right;margin-left:5px;display:none"></a>
              <a href="javascript:location.reload()" class="fa fa-repeat" style="float: right;display:none"></a>
            </div>
            <div class="box-body">
              <!-- the events -->
            <div id="external-events">
            <div class="external-noevent bg-green">Complete</div>
            <div class="external-noevent bg-red">No Show</div>
            <div class="external-noevent bg-yellow">Online Reservation</div>
			<div class="external-event bg-aqua">InStore Reservation</div>
			  <div class="btn-group">
                  <button id="" type="button" class="btn btn-info btn-flat dropdown-toggle" data-toggle="dropdown">Room Name</button>
                  <ul class="dropdown-menu" role="menu">
		<%Vector<RoomBean> roomlist = rmmgr.getRoomList();
		for(int i=0;i<roomlist.size();i++){%>
                    <li><a id="<%=roomlist.get(i).getPrice() %>" class="<%=roomlist.get(i).getRoomname() %>" href="#" onclick="$(this).parent().parent().siblings('button').text($(this).text());$(this).parent().parent().siblings('button').attr('id',this.id);">
                    <%=roomlist.get(i).getRoomname() %></a></li>
        <%} %>
                  </ul>
              </div>
			  <div class="btn-group">
        		  <button type="button" class="btn btn-info btn-flat dropdown-toggle" data-toggle="dropdown">Adult</button>
                  <ul class="dropdown-menu" role="menu">
		<%for(int i=0;i<5;i++){%>
                    <li><a href="#" onclick="$(this).parent().parent().siblings('button').text($(this).text());">
                    <%=i %></a></li>
        <%} %>
                  </ul>
              </div>
			  <div class="btn-group">
          		  <button type="button" class="btn btn-info btn-flat dropdown-toggle" data-toggle="dropdown">Child<05</button>
                  <ul class="dropdown-menu" role="menu">
		<%for(int i=0;i<5;i++){%>
                    <li><a href="#" onclick="$(this).parent().parent().siblings('button').text($(this).text());">
                    <%=i %></a></li>
        <%} %>
                  </ul>
              </div>
			  <div class="btn-group">
        		  <button type="button" class="btn btn-info btn-flat dropdown-toggle" data-toggle="dropdown">Child>06</button>
                  <ul class="dropdown-menu" role="menu">
		<%for(int i=0;i<5;i++){%>
                    <li><a href="#" onclick="$(this).parent().parent().siblings('button').text($(this).text());">
                    <%=i %></a></li>
        <%} %>
                  </ul>
              </div>
               <div class="checkbox">
	              <label for="drop-remove">
	                <input type="checkbox" id="drop-remove">
	                remove after drop
	              </label>
             	</div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Create Event</h3>
            </div>
            <div class="box-body">
              <div class="btn-group" style="width: 100%; margin-bottom: 10px;">
                <!--<button type="button" id="color-chooser-btn" class="btn btn-info btn-block dropdown-toggle" data-toggle="dropdown">Color <span class="caret"></span></button>-->
                <ul class="fc-color-picker" id="color-chooser">
                  <li><a class="text-aqua" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-blue" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-light-blue" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-teal" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-yellow" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-orange" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-green" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-lime" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-red" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-purple" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-fuchsia" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-muted" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-navy" href="#"><i class="fa fa-square"></i></a></li>
                </ul>
              </div>
              <!-- /btn-group -->
              <div class="input-group">
                <input id="new-event" type="text" class="form-control" placeholder="Event Title">

                <div class="input-group-btn">
                  <button id="add-new-event" type="button" class="btn btn-primary btn-flat">Add</button>
                </div>
                <!-- /btn-group -->
              </div>
              <!-- /input-group -->
            </div>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="box box-primary">
            <div class="box-body no-padding">
              <!-- THE CALENDAR -->
              <div id="calendar"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
<%@include file="../../include/footer.jsp"%>
</div>
<!-- ./wrapper -->
<form action="../admin_cart/cart_proc.jsp" name="cartP">
	<input type="hidden" name="array" id="array_form">
</form>

<!-- jQuery 3 -->
<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../../bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Slimscroll -->
<script src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- fullCalendar -->
<script src="../../bower_components/moment/moment.js"></script>
<script src="../../bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<!-- Page specific script -->
<script>
  $(function () {
    /* initialize the external events
     -----------------------------------------------------------------*/
    function init_events(ele) {
      ele.each(function () {
        // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
        // it doesn't need to have a start or end
        var eventObject = {
           title: $.trim($(this).text()) // use the element's text as the event title
        }
        // store the Event Object in the DOM element so we can get to it later
        $(this).data('eventObject', eventObject)
        // make the event draggable using jQuery UI
        $(this).draggable({
          zIndex        : 1070,
          revert        : true, // will cause the event to go back to its
          revertDuration: 0  //  original position after the drag
        })

      })
    }
    init_events($('#external-events div.external-event'))
    /* initialize the calendar
     -----------------------------------------------------------------*/
    //Date for the calendar events (dummy data)
    var bcolor = {
	    cart: '#f39c12',
	    instore: '#00c0ef',
	    complete: '#00a65a',
	    noshow: '#dd4b39'
	};
    var date = new Date()
    var d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear()
    $('#calendar').fullCalendar({
    	header    : {
        left  : 'prev,next today',
        center: 'title',
        right : 'month,agendaWeek,agendaDay'
      },
      buttonText: {
        today: 'today',
        month: 'month',
        week : 'week',
        day  : 'day'
      },
      events    : [
<%Vector<CartBean> relist = roommgr.getCartList(idk);
for(int i=0;i<relist.size();i++){
	String datein[] = relist.get(i).getCheckin().split("/");
	String dateout[] = relist.get(i).getCheckout().split("/");
	%>
        {
          id		     : '<%=relist.get(i).getNum()%>',
<%if(relist.get(i).getStatus().equals("memo")){%>
          title          : '<%=relist.get(i).getRoomname()%>',
<%}else{%>
          title          : '<%=relist.get(i).getRoomname()%> <%=relist.get(i).getPeople()%> Total <%=relist.get(i).getPay()%>',
<%}%>
          start          : new Date(<%=datein[2].split(" ")[0]%>, <%=Integer.parseInt(datein[0])-1%>, <%=datein[1]%>
          <%if(datein[2].split(" ").length>1){%>,<%=datein[2].split(" ")[1].split(":")[0]%>,<%=datein[2].split(" ")[1].split(":")[1]%><%}%>          
          ),
          end            : new Date(<%=dateout[2].split(" ")[0]%>, <%=Integer.parseInt(dateout[0])-1%>, <%=dateout[1]%>
          <%if(dateout[2].split(" ").length>1){%>,<%=dateout[2].split(" ")[1].split(":")[0]%>,<%=dateout[2].split(" ")[1].split(":")[1]%><%}%>          
          ),
          url            : '',
          backgroundColor: 
        	  <%if(relist.get(i).getStatus().equals("memo")){%>
    	  		'<%=relist.get(i).getPay()%>'
      	  	<%}else{%>
        	  	bcolor['<%=relist.get(i).getStatus()%>']
        	  <%}%>
        	  ,
          borderColor	 : '<%=rmmgr.getRoomColor(relist.get(i).getRoomname())%>', 
<%if(!relist.get(i).getStatus().equals("memo")){%>
          allDay 		 : true,
<%}%>
          stat			 : '<%=relist.get(i).getStatus()%>'
        },
<%}%>
      ],
      editable  : true,
      eventLimit: true,
      droppable : true, // this allows things to be dropped onto the calendar !!!
 	  eventRender: function(event, element) {
	      element.bind('dblclick', function() {
	    	  console.log(event.backgroundColor);
	        	$('.fa-save').show(300);
	        	$('.fa-repeat').show(300);
	    	  if(event.id.split("/")[0]!="memo"&&event.stat!="memo"){
			    	 if(event.stat=='complete')
		    		  event.stat = 'cart';
			    	 else if(event.stat=='instore')
		    		  event.stat = 'complete';
			    	 else if(event.stat=='cart')
		    		  event.stat = 'instore';
		    	 event.backgroundColor = bcolor[event.stat];
			      $('#calendar').fullCalendar('updateEvent', event);
	    	  }
	      });
	  },
      drop      : function (date, allDay) { // this function is called when something is dropped
    	$('.fa-save').show(300);
    	$('.fa-repeat').show(300);
        // retrieve the dropped element's stored Event Object
        var originalEventObject = $(this).data('eventObject')
        // we need to copy it, so that multiple events don't have a reference to the same object
        var copiedEventObject = $.extend({}, originalEventObject)
        var end=new moment(date);
      	var b=end.add(1,'day');
		// assign it the date that was reported
        copiedEventObject.id           	  = ($(this).next().children('button').length>0?"instore/":"memo/")+new Date().getTime()
	    copiedEventObject.title           = $(this).next().children('button').length>0?(
        									(($.trim($(this).next().children('button').text())=="Room Name")?"<%=rmmgr.getRoomDefault().getRoomname()%>":($.trim($(this).next().children('button').text())))
        									+" "+(($.trim($(this).next().next().children('button').text())=="Adult")?1:($.trim($(this).next().next().children('button').text())))
        									+"/"+(($.trim($(this).next().next().next().children('button').text())=="Child<05")?0:($.trim($(this).next().next().next().children('button').text())))
        									+"/"+(($.trim($(this).next().next().next().next().children('button').text())=="Child>06")?0:($.trim($(this).next().next().next().next().children('button').text())))
        									+" Total "+(($.trim($(this).next().children('button').text())=="Room Name")?
        											(<%=rmmgr.getRoomPrice(rmmgr.getRoomDefault().getRoomname())%>*(($.trim($(this).next().next().children('button').text())=="Adult")?
        													1:($.trim($(this).next().next().children('button').text()))))
        											:($.trim($(this).next().children('button').attr('id')))))
        									:$.trim($(this).text())
        copiedEventObject.stat         	  = ($(this).next().children('button').length>0?"instore":"<%=idk%>")
        copiedEventObject.start           = date
		var id=copiedEventObject.id.split("/")[0];
        if(id!="memo"){
        	copiedEventObject.end         = b
        }
		copiedEventObject.borderColor     = $(this).css('border-color')
		copiedEventObject.backgroundColor     = $(this).css('background-color')
		// render the event on the calendar
        // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
		$(this).next().children('button').text("Room Name")
		$(this).next().next().children('button').text("Adult")
		$(this).next().next().next().children('button').text("Child<05")
		$(this).next().next().next().next().children('button').text("Child>06")
		$('#calendar').fullCalendar('renderEvent', copiedEventObject, true)
        // is the "remove after drop" checkbox checked?
        if ($('#drop-remove').is(':checked')) {
          // if so, remove the element from the "Draggable Events" list
          $(this).remove()
        }
      },
      eventResize: function(event, delta, revertFunc) {
          event.title = event.title.replace(event.title.split(" ")[event.title.split(" ").length-1],
        		  event.title.split(" ")[1].split("/")[0]*$('.'+(event.title.split(" ")[0])).attr('id')*(event.end.diff(event.start,'days')));
	    $('#calendar').fullCalendar('updateEvent', event);
    	$('.fa-save').show(300);
    	$('.fa-repeat').show(300);
      },
      eventDragStop: function(event,jsEvent) {
      	$('.fa-save').show(300);
    	$('.fa-repeat').show(300);
    	    var trashEl = jQuery('#calendar');
    	    var ofs = trashEl.offset();
    	    var x1 = ofs.left;
    	    var x2 = ofs.left + trashEl.outerWidth(true);
    	    var y1 = ofs.top;
    	    var y2 = ofs.top + trashEl.outerHeight(true);
    	    if (!(jsEvent.pageX >= x1 && jsEvent.pageX <= x2 &&
        	        jsEvent.pageY >= y1 && jsEvent.pageY <= y2)) {
   	           if (confirm("Are you sure about this change?")) {
        	   		trashEl.fullCalendar('removeEvents', event.id);
   	           }
    	    }
    	}
    })
    $('.fa-save').click(function(){
    	var myArray = [];
    	function rgbToHex(r, g, b) {
    	    return "#" + componentToHex(r) + componentToHex(g) + componentToHex(b);
    	}
    	function componentToHex(c) {
    	    var hex = c.toString(16);
    	    return hex.length == 1 ? "0" + hex : hex;
    	}
    	for(var i=0;i<$('#calendar').fullCalendar('clientEvents').length;i++){
    		var cal=$('#calendar').fullCalendar('clientEvents')[i];
    		var id=cal.id.split("/")[0];
    		var title=cal.title.split(" ");
        	myArray[i] = new Array();
		    myArray[i][0]=id;
		    myArray[i][1]=title[0];
     		if(!(id=="memo"||cal.stat=="memo")){
     			console.log(myArray[i]);
	     		myArray[i][2]=cal.start.format();
     			myArray[i][3]=cal.end.format();
     		}else{
     			console.log(myArray[i]);
	     		myArray[i][2]=cal.start.format("MM/DD/YYYY HH:mm");
     			myArray[i][3]=cal.end!=null?cal.end.format("MM/DD/YYYY HH:mm"):cal.start.add(1,'h').format("MM/DD/YYYY HH:mm");
     		}
     		myArray[i][4]=(cal.stat=="memo"?"<%=idk%>":title[1]);
     		if(cal.stat=="memo"){
	     		myArray[i][5]=cal.backgroundColor;
     		}else if(title[3]==null) {
     			var clr = cal.backgroundColor.substring(4,cal.backgroundColor.length-1);
	     		myArray[i][5]=rgbToHex(Number(clr.split(",")[0]),Number(clr.split(",")[1]),Number(clr.split(",")[2]));
     		}else{
	     		myArray[i][5]=title[3];
     		}
     		myArray[i][6]=cal.stat;
   		}
    	$('#array_form').val(myArray);
    	document.cartP.submit();
    })
    /* ADDING EVENTS */
    var currColor = '#3c8dbc' //Red by default
    //Color chooser button
    var colorChooser = $('#color-chooser-btn')
    $('#color-chooser > li > a').click(function (e) {
      e.preventDefault()
      //Save color
      currColor = $(this).css('color')
      //Add color effect to button
      $('#add-new-event').css({ 'background-color': currColor, 'border-color': currColor })
    })
    
    $('#add-new-event').click(function (e) {
      e.preventDefault()
      //Get value and make sure it is not null
      var val = $('#new-event').val()
      if (val.length == 0) {
        return
      }
      //Create events
      var event = $('<div />')
      event.css({
        'background-color': currColor,
        'border-color'    : currColor,
        'color'           : '#fff'
      }).addClass('external-event')
      event.html(val)
      $('#external-events').append(event)

      //Add draggable funtionality
      init_events(event)

      //Remove event from text input
      $('#new-event').val('')
    })
  })
</script>
</body>
</html>
