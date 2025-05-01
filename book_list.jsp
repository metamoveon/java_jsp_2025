<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file = "db.jsp" %>


<!DOCTYPE html>
<html5>
    <head>
        <title>Book List</title>
        <script src = "https://cdn.tailwindcss.com"></script>
    </head>
    <body class = "p-8 bg-gray-50">
        <div class = "max-w-4xl mx-auto">
            <h1 class = "text-2xl font-bold mb-4">Book Management</h1>

            <% if (request.getParameter("message") != null) { %>
                <div class = "bg-green-100 text-green-700 p-4 rounded mb-4">
                    <%= request.getParameter("message") %>
                </div>
            <% } %>

        <div class = "bg-white p-6 rounded-lg shadow-md mb-8 ">
            <h2 class = "text-xl font-semibold mb-4"> Add New book</h2>
            <form action = "book_action.jsp" method = "post" class = "space-y-4">
                <div>
                    <label for = "block mb-2 " >Book Name</label>
                    <input type = "text" name = "Name" required
                        class = " w-full border p-2 rounded"/>
                </div>

                <div>
                    <label for = "block mb-2">Price</label>
                    <input type = "text" name = "Price" required
                        class = " w-full border p-2 rounded"/>
                </div>

                <button type = "submit" name = "action" value = "Insert"
                    class = "bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600">
                    Add Book
                </button>
            </form>
        </div>

        <!--ส่วนของการแสดงข้อมูลเป็นตารางหลังจากเพิ่มข้อมูล"-->
        <div class = " bg-white p-6 rounded-lg shadow-md">
            <h2 class = "text-xl font-semibold mb-4">Book List</h2>
            <table class = "w-full">
                <thead class = "bg-gray-200">
                    <tr>
                        <th class = "p-3 text-left">ID</th>
                        <th class = "p-3 text-left">Name</th>
                        <th class = "p-3 text-left">Price</th>
                        <th class = "p-3 text-left">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try(Connection conn = getConnection();
                            PreparedStatement ps = conn.prepareStatement("SELECT * FROM tb_book ORDER BY ID");
                            ResultSet rs = ps.executeQuery()) {
                                while (rs.next()) {
                    %>
                    <tr class = "border-t">
                        <td class = "p-3"><%= rs.getInt("ID") %></td>
                        <td class = "p-3"><%= rs.getString("Name") %></td>
                        <td class = "p-3"><%= rs.getDouble("Price") %></td>
                        < class = "p-3">

                            <a href = "book_edit.jsp?id=<%= rs.getInt("id") %>" 
                                class = "text-blue-500 hover:text-blue-700 mr-3">
                                Edit
                            </a>
                        </td>
                    </tr>
                    <%
                                }
                            } catch (SQLException e) {
                                out.print("Error : " + e.getMessage());
                            }
                    %>
                            
                </tbody>
            </table>
        </div>
    </body>
</html>
        
        

    