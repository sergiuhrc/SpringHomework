<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shirciiala
  Date: 3/6/2019
  Time: 5:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mochaccino Coffee</title>
    <style>
        h1 {
        text-align: center;
        text-transform: uppercase;
        color: #4CAF50;
    }

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
    </style>

</head>
<body>
<div>
    <h1 class="head_text"><b>Coffee Cart Details</b></h1>
    <div class="wrapper">
        <div  class="center" class="wrapper">

            <div>
                <table id="t01" style="width:100%">
                    <tr>
                        <th>Name</th>
                        <th>Water(ML)</th>
                        <th>Beans</th>
                        <th>Roast</th>
                        <th>Price(Lei)</th>
                    </tr>
                    <c:if test="${not empty lists}">

                        <ul>
                            <c:forEach var="listValue" items="${lists}">
                                <tr>
                                    <td>${listValue.name} </td>
                                    <td>${listValue.water} </td>
                                    <td>${listValue.beans} </td>
                                    <td>${listValue.roast} </td>
                                    <td>${listValue.price} </td>
                                </tr>
                            </c:forEach>
                        </ul>

                    </c:if>

                </table>
            </div>
        </div>

    </div>

</div>
</body>
</html>
