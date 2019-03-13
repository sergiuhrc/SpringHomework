<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shirciiala
  Date: 3/11/2019
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #wrapper {
            width: 100%;
            height: 100%;

            display: flex;
            align-items: center;
            justify-content: center;
        }
        #cup_details{
            margin-top: 80px;
            background-image: url("https://i.pinimg.com/originals/34/e5/f8/34e5f89b41bff99fc3a14aa9d3dbb5da.png");


            background-repeat: no-repeat;
        }
        .center {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 100%;
            height: 100%;
        }
        table {
            width:100%;
        }
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        table#t01 tr:nth-child(even) {
            background-color: #eee;
        }
        table#t01 tr:nth-child(odd) {
            background-color: #fff;
        }
        table#t01 th {
            background-color: chocolate;
            color: white;
        }


        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
    <title>Title</title>
</head>
<body>
<div class="wrapper">
    <form action="/springmvcexample_war_exploded/procesForm">
        <div>Name: <input type="text" name="name"><br></div>
        <div>Water: <input type="text" name="water"><br></div>
        <div>Price: <input type="text" name="price"><br></div>
        <div>Beans:  <select name="beans">
            <option value="ROBUSTA">Select your option</option>
            <option value="ARABICA">ARABICA</option>
            <option value="ROBUSTA">ROBUSTA</option>
        </select><br>
        </div>
        <div>     Roast:  <select name="roast">
            <option value="LIGHT">Select your option</option>
            <option value="LIGHT">LIGHT</option>
            <option value="MEDIUM">MEDIUM</option>
            <option value="DARK">DARK</option>
            <option value="BLENDS">BLENDS</option>
        </select>
        </div>






        <input type="submit" value="Submit">
    </form>
    <hr>
    <button class="button" onclick="window.location.href = '/springmvcexample_war_exploded/';">Home</button >

</div>
</body>
</html>
