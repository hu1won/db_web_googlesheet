<%@page import="java.sql.*" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>purium product</title>
  <style>
    body {
      margin: 0 auto 0 auto;
      width: 1950px;
      margin: 20px 0px 20px 0px;
    }

    .h1 {
      width: 110px;
      position: relative;
      left: 910px;
      margin-top: 0;
      margin-bottom: 0;
    }

    div {}

    .box {
      background: white;
      width: 960px;
      height: 800px;
      border-radius: 6px;
      margin: 0 auto 0 auto;
      padding: 0px 0px 70px 0px;
      border: #2980b9 4px solid;
      margin-top: 0;
    }

    .table_div {
      font-size: 12px;
      width: 958px;
      height: 550px;
    }


    #prcondition {
      width: 100px;
    }

    #product {
      width: 100px;
    }

    #standard {
      width: 100px;
    }

    #unit {
      width: 50px;
    }

    #quantity {
      width: 50px;
    }

    #price {
      width: 150px;
    }

    #totalprice {
      width: 150px;
    }

    .info {
      width: 958px;
      height: 25px;
      font-size: 12px;
    }

    .prev {
      position: relative;
      width: 100px;
      left: 850px;
    }

    .name_uniq {
      width: 80px;
      display: inline;
    }

    .text_uniq {
      width: 600px;
      display: inline;
    }
  </style>

</head>

<body>

  </div>
  <h1 class="h1">
    Purium
  </h1>


  </head>

  <body>

    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

    <div class="box">
      
        <div class="info">

          <select name="prcondition" id="prcondition" onchange="categoryChange(this)">
            <div>
              <option value="none">=== 선택 ===</option>
            </div>
            <option value="prod">제품</option>
            <option value="separate">별매품</option>
            <option value="retail">소매품</option>
            <option value="delivery">납품/설치</option>
          </select>

          <select name="product" id="product" onchange="changeText(this)">
            <option value="none">=== 선택 ===</option>
          </select>
          <input type="text" placeholder="규격" id="standard" name="standard" value="">
          <input type="text" placeholder="단위" id="unit" name="unit" value="">
          <input type="text" placeholder="수량" id="quantity" name="quantity" value="">
          <input type="text" placeholder="단가" id="price" name="price" value="">
          


          <input type="button" value="추가" onclick="tableCreate();">
          <input type="button" value="삭제" onclick="tableRemove()">


        </div>
      

      <%-- <form action="productcontrol.jsp" method"post"></form> --%>

      <div class="table_div">
        <table border="1" id="dynamicTable" word-break:break-all>

          <thead>
            <tr>
              <th width=100px;>구분</th>
              <th width=100px;>품명</th>
              <th width=100px;>규격</th>
              <th width=50px;>단위</th>
              <th width=50px;>수량</th>
	              <th width=150px;>단가</th>
            </tr>
          </thead>

          <tbody id="dynamicTbody">

          </tbody>
        </table>
      </div>

      <div class="name_uniq">
        특이사항
      </div>
      <div class="text_uniq">
        <input type="text" name="uniqueness" style="width:600px;height:200px;font-size:15px;">
      </div>

		<div class="prev"><input type="button" value="저장" onclick="tablesubmit();" style="width:100px;"></div>
      <div class="prev"><input type="button" value="미리보기" onclick="location.href='spreadsheet1-1.jsp'" style="width:100px;"></div>
      
	

      <script>
        function tableCreate() {
          var tc = new Array();
          var html = '';

          var name = $("#prcondition").val();
          var job = $("#product").val();
          var age = $("#standard").val();
          var hobby = $("#unit").val();
          var quantity = $("#quantity").val();
          var price = $("#price").val();
    

          html += '<tr>';
          html += '<td>' + name + '</td>';
          html += '<td>' + job + '</td>';
          html += '<td>' + age + '</td>';
          html += '<td>' + hobby + '</td>';
          html += '<td>' + quantity + '</td>';
          html += '<td>' + price + '</td>';
          html += '</tr>';

          $("#dynamicTable").append(html);
          $("#prcondition").val('');
          $("#product").val('');
          $("#standard").val('');
          $("#unit").val('');
          $("#quantity").val('');
          $("#price").val('');
        }

        function tablesubmit(){
        	var table = document.getElementById("dynamicTable");
			var name = "";
			var product = "";
			var standard = "";
			var unit = "";
			var quantity = "";
			var price = "";
        	for (var i = 1; i<15;i++){
        			name = table.rows[i].cells[0].outerText;
                	product = table.rows[i].cells[1].outerText;
                	standard = table.rows[i].cells[2].outerText;
                	unit = table.rows[i].cells[3].outerText;
                	quantity = table.rows[i].cells[4].outerText;
                	price = table.rows[i].cells[5].outerText;
           if(name == "prod"){
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
                continue;
                
           }else if(name == "separate"){
        	   
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
        	  continue;
           }else if(name == "retail"){
        	
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
        	   continue;
           }else if(name == "delivery"){
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
        	   continue;
        	}
           
        	}
        }
        
        	
        function tabledelete(){
        	$.ajax({
    			url: "https://docs.google.com/spreadsheets/d/1_gKIbyh_Af3OrntoIViooFNLIojx5sqcpVDgztQTIU8/edit#gid=0&range=A2:G43",
    			type: "DELETE",
    			success: function(data){
    			alert('success');
    			},
    			error: function(request,status,error){
    			console.log('Error');
    			}
    			});        	
        }
      

        function tableRemove() {
          $('#dynamicTable tbody tr:last').remove();
        }

        function categoryChange(e) {
          var good_a = ["제품1", "제품2", "제품3", "제품4"];
          var good_b = ["별매품1", "별매품2", "별매품3", "별매품4"];
          var good_c = ["소매품1", "소매품2", "소매품3", "소매품4", "소매품5"];
          var good_d = ["납품/설치1","납품/설치2"];
          var target = document.getElementById("product");

          if (e.value == "prod") var d = good_a;
          else if (e.value == "separate") var d = good_b;
          else if (e.value == "retail") var d = good_c;
          else if (e.value == "delivery") var d = good_d;


          target.options.length = 0;

          for (x in d) {
            var opt = document.createElement("option");
            opt.value = d[x];
            opt.innerHTML = d[x];
            target.appendChild(opt);
          }
        }

        function changeText(e) {


          var getObj = e[e.selectedIndex].innerHTML;
          if (getObj == "제품1") {
            document.getElementById("standard").value = "스마트에어샤워1";
            document.getElementById("unit").value = "단위1";
            document.getElementById("price").value = "10000000";
            
          } else if (getObj == "제품2") {
            document.getElementById("standard").value = "스마트에어샤워2";
            document.getElementById("unit").value = "단위2";
            document.getElementById("price").value = "20000000";
            
          } else {
            document.getElementById("standard").value = "스마트에어샤워3";
            document.getElementById("unit").value = "단위3";
            document.getElementById("price").value = "30000000";
            
          }
        }
      </script>

  </body>

</html>