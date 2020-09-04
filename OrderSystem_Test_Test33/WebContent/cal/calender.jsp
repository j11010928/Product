<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- <script src="../js/jquery-3.5.1.js"></script> -->
<!-- ----------------------------------------------------------------- -->
<script type="text/javascript">
$(document).ready(function () {
var today=new Date();
var dd=today.getDate();
var mm=today.getMonth()+1;// January is 0!
var yyyy= today.getFullYear();
if(dd<10){
	dd='0'+dd
}
if(mm<10){
	mm='0'+mm
}
today=yyyy+'-'+mm+'-'+dd;
document.getElementById("datefield").setAttribute("min",today);


	
}); 
	

</script>
</head>
<body>
<h1>예약</h1>
<form action="ReserveCheck.re" method="post">
<input type="date" id="datefield" name="date">
<input type="number" min="0" max="6">
<input type="submit" value="예약확인">
</form>
</body>
</html>