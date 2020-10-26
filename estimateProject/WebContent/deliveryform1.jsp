<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>delivery1</title>
<style>

  body{
    font-family: 'Open Sans', sans-serif;
    /* background:#3498db;*/
    margin: 0 auto 0 auto;
    width:100%;
    margin: 20px 0px 20px 0px;
  }

  .inputs{
    /* background: white;*/
    /* position: absolute;*/
    /*
    top: 70px;
    bottom: 30%;
    left: 0;
    right: 0;
    margin: auto;
    */
    width:50%;
    height: 30%;
    margin-left:32%;
    text-align: left;
  }

  .Information{
    /* position: absolute;*/
    /* background: white; */
    width: 97%;
    height: 100%;
    /*
    top: 0%;
    bottom: 0;
    left: 0;
    right: 0;
    */
    padding:7px;
    margin-top: 30%;
    padding-right: 20%;

    text-align: left;
    left: 20%;
  }

  input[type=button]{
  background-color: #4CAF50;
   border: none;
   color: white;
   text-decoration: none;
   cursor: pointer;
  }

  .save{
    width: 20%;
   cursor: pointer;
   margin-left:100%;

  }

  .username{
    background:#ecf0f1;
    border: #ccc 1px solid;
    border-bottom: #ccc 2px solid;
    /*padding: 8px;*/
    width:250px;
    color:#AAAAAA;
    margin: 5px;
    font-size:1em;
    /* border-radius:4px; */
  }

  .validity{
    margin: 5px;
    padding-left:10%;
  }

  div{
/*  border: 1px solid red;*/
  }

  .box{
    background:white;
    width:50%;
    height:70%;
    border-radius:6px;
    margin: 0 auto 0 auto;
    padding:0px 0px 70px 0px;
    border: #2980b9 4px solid;
    margin-top:5%;
  }

  .h1{
text-align: center;
margin-top:3%;
  }

  #button{
    margin-top:5px;
    margin-bottom:10px;
    display:grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-gap: 1px;
    height:5%;
  }

  .sellers{
    margin-left:20px;
  }

</style>

</head>
<body>
 <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
    window.onload = function tablesubmit(){ 	
    			var name = 'clear';
            	var product = 'clear';
            	var standard = 'clear';
            	var unit = 'clear';
            	var quantity = 'clear';
            	var price = 'clear';
            	$.ajax({
        			url: "https://script.google.com/macros/s/AKfycbzvJSBnET2XP-S9GY3WrFMB3KJd-jLcMSU6e_PXw0wTPEZBLpc/exec",
        			data: {앞자리:name,날짜:product,장소:standard,조건:unit,구매자:quantity
        			      },
        			type: "POST",
        			success: function(data){
        			console.log('success');
        			},
        			error: function(request,status,error){
        			console.log('Error');
        			}
        			});
            	
            	$.ajax({
        			url: "https://script.google.com/macros/s/AKfycbyQpTdYEFhQlf7bU1GUeD-AI34XaCxj5s0ElQO9utvQ2BJCEqU-/exec",
        			data: {구분:name,품명:product,규격:standard,단위:unit,수량:quantity,단가:price
        			      },
        			type: "POST",
        			success: function(data){
        			console.log('success');
        			},
        			error: function(request,status,error){
        			console.log('Error');
        			}
        			});
            	
            	$.ajax({
        			url: "https://script.google.com/macros/s/AKfycbzxBUmlisNYkk_6UezE3ig9pTGo8TCzxUD1JyyTiypVVFYIhaxP/exec",
        			data: {구분:name,품명:product,규격:standard,단위:unit,수량:quantity,단가:price
        			      },
        			type: "POST",
        			success: function(data){
        			console.log('success');
        			},
        			error: function(request,status,error){
        			console.log('Error');
        			}
        			});
            	
            	$.ajax({
        			url: "https://script.google.com/macros/s/AKfycbypapJNR7tjX9VMgreZkTyw2Wfe7c-VuEYaY9RcuY8eRszQkN0Q/exec",
        			data: {구분:name,품명:product,규격:standard,단위:unit,수량:quantity,단가:price
        			      },
        			type: "POST",
        			success: function(data){
        			console.log('success');
        			},
        			error: function(request,status,error){
        			console.log('Error');
        			}
        			});
            	
            	$.ajax({
        			url: "https://script.google.com/macros/s/AKfycbxHZG022k5B4QIHnKVvjJzji-5Sn9DU1Vg0bBAo0Qpb9hYWGeM/exec",
        			data: {구분:name,품명:product,규격:standard,단위:unit,수량:quantity,단가:price
        			      },
        			type: "POST",
        			success: function(data){
        			console.log('success');
        			},
        			error: function(request,status,error){
        			console.log('Error');
        			}
        			});
            	
    }
    </script> 
<!--
<%
String str0 = "409 - 87 - 00547";
String str1 = "889 - 09 - 18324";
String str2 = "991 - 03 - 19283";
String name0 = "퓨리움";
String name1 = "퓨리움 서비스";
String name2 = "닥터퓨리움";
String ceo0 = "남동규";
String ceo1 = "김석한";
String ceo2 = "남의진";
String btnclick1 = "btnclick1";
String btnclick2 = "btnclick2";
String btnclick3 = "btnclick3";
%>
-->
<h1 class="h1">
  <!-- <img src="blacklogo.png" alt="이미지 오류" width="20%", height="10%"> -->
  Purium
</h1>

<div class="box">
  <div id="button">
  <input type = "button" class="button_p" value = "퓨리움" id="str" onclick="button1_click()">
  <input type = "button" class="button_ps"value = "퓨리움서비스" id="str1" onclick="button2_click()">
  <input type = "button" class="button_dp"value = "닥터퓨리움" id="str2" onclick="button3_click()">
</div>

<div class="inputs">
<form action="deliverycontrol1.jsp" method"post">
  <br>
   <div> 납품 일자 : <input class = "username" type = "text" name = "date" value='지정 일자' placeholder="지정 일자"><br>  </div>
   <div> 납품 장소 : <input class = "username" type = "text" name = "location" value='지정 장소' placeholder="지정 장소"><br></div>

   <div> 대금 지불 조건 : <select name="condition" >
          <option value="none">=== 선택 ===</option>
          <option value="납품/설치 완료 후 100%">납품/설치 완료 후 100%</option>
          <option value="설치 완료 후 100%">설치 완료 후 100%</option>
            <option value="납품 완료 후 100%">납품 완료 후 100%</option>
           </select><br> </div>
    <div class = "validity"> 견적 유효 기간 : 견적 후 1개월 <br> </div>
    <span class = "sellers" > 판매처 : <input class = "username" type = "text" name = "customer" value='' placeholder="수기 작성"><br></span>

    <div class="Information">
    공급자 - 등록번호 : <input type="text" id="str0" value='' readonly/><br>
    상호명 : <input type="text" name="btnclick" id="name" value='' readonly/><br>
    대표자 : <input type="text" id="ceo" value='' readonly/><br>
    </div>

    <div> <input type="submit" class = "save" value="저장"/> </div>
</div>
</form>




</div>

<script>
function button1_click() {
   var str = "<%=str0%>";
   var name = "<%=name0%>";
   var ceo = "<%=ceo0%>";
   var btnclick = "<%=btnclick1%>"

  document.getElementById("str0").value = str;
	document.getElementById("name").value = name;
	document.getElementById("ceo").value = ceo;
	document.getElementById("btnclick").innerHTML = btnclick;
}
</script>

<script>
function button2_click() {
   var str = "<%=str1%>";
   var name = "<%=name1%>";
   var ceo = "<%=ceo1%>";
   var btnclick = "<%=btnclick2%>"
  document.getElementById("str0").value = str;
	document.getElementById("name").value = name;
	document.getElementById("ceo").value = ceo;
	document.getElementById("btnclick").innerHTML = btnclick;
}
</script>

<script>
function button3_click() {
   var str = "<%=str2%>";
   var name = "<%=name2%>";
   var ceo = "<%=ceo2%>";
   var btnclick = "<%=btnclick3%>"
   document.getElementById("str0").value = str;
	document.getElementById("name").value = name;
	document.getElementById("ceo").value = ceo;
	document.getElementById("btnclick").innerHTML = btnclick;
}
</script><br>

</input>

</body>
</html>