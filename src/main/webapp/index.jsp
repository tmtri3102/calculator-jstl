<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <%
    if (request.getMethod().equals("POST")) {
      int firstOperand = Integer.parseInt(request.getParameter("first"));
      String operator = request.getParameter("operator");
      int secondOperand = Integer.parseInt(request.getParameter("second"));

      int result;
      switch (operator) {
        case "addition":
          result = firstOperand + secondOperand;
          break;
        default:
          result = 0;
      }

      out.println("<h2>Result: " + result + "</h2>");
    }
  %>

</head>
<body>
<h1><%= "Simple calculator" %></h1>
<h3>Calculator</h3>
<form action="/calculate.jsp" method="post">
<label for="first">First Operand</label>
<input type="number" name="first" id="first" />
<br/>
<label for="operator">Operator</label>
<select name="operator" id="operator">
  <option value="add">Add</option>
  <option value="sub">Sub</option>
  <option value="multiply">Multiply</option>
  <option value="divide">Divide</option>
</select>
  <br/>
<label for="second">Second Operand</label>
<input type="number" name="second" id="second" />

  <br/>
  <button type="submit">Calculate</button>
</form>
</body>
</html>