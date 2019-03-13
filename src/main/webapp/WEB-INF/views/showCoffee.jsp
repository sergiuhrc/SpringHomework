<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shirciiala
  Date: 3/6/2019
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
    .div_prop{border-style: double;}
    h1 {
        text-align: center;
        text-transform: uppercase;
        color: #4CAF50;
    }

    .img_prop{
        width: 125px;
        height: 125px;

    }

    .rTable {
        display: table;
        width: 80%;
    }
    .rTableRow {
        display: table-row;
    }

    .rTableCell, .rTableHead {
        display: table-cell;
        padding: 3px 10px;
        border: 1px solid #999999;

    }

    .button {
        border: none;
        outline: 0;
        padding: 12px;
        color: white;
        background-color: #000;
        text-align: center;
        cursor: pointer;
        width: 100%;
        font-size: 18px;
    }
    .button button:hover {
        opacity: 0.7;
    }
    ul {
       background-color: #4CAF50;
    }

    li  {
        display: inline-block;;
        color: #000;
        padding: 8px 16px;
        text-decoration: none;
        background-color: #4CAF50;
        color: white;
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
    <title>First Page</title>
</head>
<body>
<header>
    <div class="div_prop"><h1 class="head_text"><b>Coffee</b></h1></div>

</header>
<div class="rTable">
    <div class="rTableRow">
        <c:if test="${not empty lists}">
                <c:forEach var="listValue" items="${lists}">
                        <img class="img_prop" src="http://tiny.cc/js1t3y" alt="checked"/>
                        <div>
                            <span><b>${listValue.name} </b></span>
                            <hr>
                            <table id="t01" style="width:100%">
                                <tr>
                                    <th>Water(ML)</th>
                                    <th>Beans</th>
                                    <th>Roast</th>
                                    <th>Price(Lei)</th>
                                </tr>
                                    <ul>
                                            <tr>
                                                <td>${listValue.water} </td>
                                                <td>${listValue.beans} </td>
                                                <td>${listValue.roast} </td>
                                                <td>${listValue.price} </td>
                                            </tr>
                                    </ul>
                            </table>
                        </div>
                        <br>
                        <hr>
                        <button class="button" onclick="window.location.href = 'display';">Add to cart</button >
                   <hr>
                    <br>
                </c:forEach>
        </c:if>


    </div>



</div>

</body>
</html>
