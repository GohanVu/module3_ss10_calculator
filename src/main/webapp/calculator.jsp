<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/28/2024
  Time: 2:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="style.css">
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="calculate" method="post">
    <fieldset>
        <legend>Calculator</legend>
        <table>
            <tr>
                <td>First operand</td>
                <td><input name = "first-operand" type="text"></td>
            </tr>
            <tr>
                <td>Operator</td>
                <td>
                    <select name="operator">
                        <option value="+">Addition</option>
                        <option value="-">Subtraction</option>
                        <option value="*">Multiplication</option>
                        <option value="/">Division</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Second operator</td>
                <td><input name="second-operand" type="text"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Calculate"></td>
            </tr>
        </table>
    </fieldset>
</form>
<c:if test = "${result != null}">
    <h3>${firstOperand} ${operator} ${secondOperand} = ${result}</h3>
</c:if>
</body>
</html>
