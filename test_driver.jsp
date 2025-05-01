<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test Driver</title>
</head>
<body>
    <%
    try {
        Class.forName("org.postgresql.Driver");
        out.println("PostgreSQL Driver loaded successfully!");
    } catch (ClassNotFoundException e) {
        out.println("Error loading PostgreSQL Driver: " + e.getMessage());
        e.printStackTrace(new PrintWriter(out)); // ใช้ PrintWriter ครอบ JspWriter
    }
    %>
</body>
</html>