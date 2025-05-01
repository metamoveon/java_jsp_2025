<%@ page import ="java.sql.*" %>
<%!
// Database connection details
private static final String URL = "jdbc:postgresql://localhost:5432/MyLocalHost";
private static final String USER = "postgres";
private static final String PASS = "091977";

public static Connection getConnection() throws SQLException {
    try{
        Class.forName("org.postgresql.Driver"); //สร้างการเชื่อมต่อฐานข้อมูล
        return DriverManager.getConnection(URL, USER, PASS);
    }catch (ClassNotFoundException e){
        e.printStackTrace();
        throw new SQLException("Unable to load driver class", e.getMessage());
    }
}
%>





