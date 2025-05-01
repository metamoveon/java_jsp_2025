<%
String name = "Sutra";
int age = 47; 
%>

<h1>Name : <%= name %></h1>
<h1>Age : <%= age %></h1>

<%
    out.println("Hello Name "+ name + "Age : "+age);  // This will cause an error
%>