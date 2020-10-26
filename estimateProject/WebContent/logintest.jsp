<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Simple Login Form Template | Tutorial Jinni</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='//fonts.googleapis.com/css?family=Open+Sans:700,600' rel='stylesheet' type='text/css'>
    <style>
    	input[type=button], input[type=submit], input[type=reset] {
  			background-color: #4CAF50;	
 			 border: none;
 			 color: white;		
  			padding: 16px 32px;
 			 text-decoration: none;
 			 margin: 4px 2px;
 			 cursor: pointer;
			}
        body{
          font-family: 'Open Sans', sans-serif;
          background:#white;
          margin: 0 auto 0 auto;  
          width:100%; 
          text-align:center;
          margin: 20px 0px 20px 0px;   
        }
        p{
          font-size:12px;
          text-decoration: none;
          color:#ffffff;
        }
        h1{
          font-size:1.5em;
          color:#525252;
        }
        .box{
          background:white;
          width:300px;
          border-radius:6px;
          margin: 0 auto 0 auto;
          padding:0px 0px 70px 0px;
          border: #2980b9 4px solid; 
        }
        .username{
          background:#ecf0f1;
          border: #ccc 1px solid;
          border-bottom: #ccc 2px solid;
          padding: 8px;
          width:250px;
          color:#AAAAAA;
          margin-top:10px;
          font-size:1em;
          border-radius:4px;
        }
        .button{
          background:#2ecc71;
          width:125px;
          padding-top:5px;
          padding-bottom:5px;
          color:white;
          border-radius:4px;
          border: #27ae60 1px solid;
          margin-top:20px;
          margin-bottom:20px;
          float:left;
          margin-left:88px;
          font-weight:800;
          font-size:0.8em;
        }
        .button:hover{
          background:#2CC06B; 
        }
        .fpwd{
            color:#f1c40f;
            text-decoration: underline;
        }
       #absoluteCenteredDiv{
            position: absolute;
            top:0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
            width:400px;
            height: 300px;
            text-align: center;
       }
    </style>
</head>
<body>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <div id="absoluteCenteredDiv">
        <form action="loginCheck.jsp" method="post">
            <div class="box">
                <h1>Login Form</h1>
                <input class="username" name="id" type="text" placeholder="User Name">
                <input class="username" name="password" type="password" placeholder="Password">
                <input type="submit" value="signin">
        </form>
    </div> 
  
</body>
</html>
