<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculation Result</title>
</head>
<body>
<h1>Result:</h1>
<%
    int firstOperand = Integer.parseInt(request.getParameter("first"));
    String operator = request.getParameter("operator");
    int secondOperand = Integer.parseInt(request.getParameter("second"));

    int result = firstOperand + secondOperand;
//    switch (operator) {
//        case "addition":
//            result
//            break;
//        default:
//            result = 0;
//    }
%>
<h2><%= firstOperand + " " + operator + " " + secondOperand + " = " + result %></h2>
</body>
</html>