<!-- receiveVariable.jsp -->
<!DOCTYPE html>
<html5>
<head>
    <title>Receive Variable</title>
</head>
<body>

<%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
%>

<script>
    alert("Hello <%= name %>! You are <%= age %> years old.");
</script>

<h1>Received Values:</h1>
<p>Name: <%= name %></p>
<p>Age: <%= age %></p>

</body>
</html>
