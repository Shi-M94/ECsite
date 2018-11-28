<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />


<title>Admin画面</title>


<style type="text/css">

	body {
	margin:0;
	padding:0;
	line-height:1.6;
	letter-spacing:1px;
	font-family:Verdana, Helvetica, sans-serif;
	font-size:12px;
	color:#333;
	background:#fff;
	}

	table {
	text-align:center;
	margin:0 auto;
	}

	/* ========ecsite LAYOUT======== */
	#top {
	width:780px;
	margin:30px auto;
	border:1px solid #333;
	text-align: center;
	padding: 5px auto;
	}

	#top p{
	display:inline-block;
	}

	#top img{
	vertical-align:middle;
	}

	#header {
	width: 100%;
	height: 80px;
	background-color: black;
	}

	#main {
	width: 100%;
	height: 500px;
	text-align: center;
	}

	#footer {
	width: 100%;
	height: 80px;
	background-color: black;
	clear:both;
	}

	#text-center-right,#text-center-left {
	position:relative;
	border:1px solid lightgray;
	display: inline-block;
	text-align: center;
	padding: 0px 15px 5px 15px;
	margin: 0px 10px ;
	background-color:lightgray;
	}

	#text-center-right :before {
	content: "";
	position: absolute;
	top: 50%;
	left:100%;
	border: 10px solid transparent;
	border-left: 10px solid lightgray;
	}

	#text-center-left :before {
	content: "";
	position: absolute;
	top: 50%;
	left:-18%;
	border: 10px solid transparent;
	border-right: 10px solid lightgray;
	}

	.button {
	background-color: white;
	border-style: none;
	border-right: 2px solid gray;
	border-bottom: 2px solid gray;
	}


</style>


</head>
<body>

	<div id="header">
		<div id="pr"></div>
	</div>

	<div id="main">
		<div id="top">
			<p>Admin</p>
		</div>


		<img src = "リスのアイコンですたい右向きjpg.jpg"/><div id="text-center-left">
		<p>商品</p>
			<s:form action="ItemCreateAction">
				<s:submit value="新規登録" class="button"/>
			</s:form>
			<br>
			<s:form action="ItemListAction">
				<s:submit value="一覧" class="button"/>
			</s:form>
		</div>

		<div id="text-center-right">
		<p>ユーザー</p>
			<s:form action="UserCreateAction">
				<s:submit value="新規登録" class="button"/>
			</s:form>
			<br>
			<s:form action="UserListAction">
				<s:submit value="一覧" class="button"/>
			</s:form>
		</div><img src = "リスのアイコンですたい。.jpeg"/>
		<div id="text-right">

					<p>Home画面へ戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
				</div>
		<div class="wrapper">
			<div class="square" id="elem"></div>
		</div>


	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>



</body>
</html>