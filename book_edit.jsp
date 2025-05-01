<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file = "db.jsp" %>

<!DOCTYPE html>
<html5>
    <head>
        <title>Edit Book</title>
        <script src = "https://cdn.tailwindcss.com"></script>
    </head>
    <body class = "p-8 bg-gray-50">
        <div class = "max-w-4xl mx-auto">
            <h1 class = "text-2xl font-bold mb-6">Edit Book</h1>

            <% 
            
            try (
                Connection conn = getConnection();
                PreparedStatement ps = conn.prepareStatement("SELECT * FROM tb_book WHERE id = ?");
            ) {
                ps.setInt(1, Integer.parseInt(request.getParameter("id")));
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
            %>
            
            <%
                }
            } catch (SQLException e) {
                out.println("Error: " + e.getMessage());
            }
            %>
        </div>
    </body>
</html5>
            