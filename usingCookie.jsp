<div> Using cookie </div> <!-- แสดงหัวข้อความว่า Using Cookie -->

<%
    // สร้าง class Cookie
    Cookie cookie = new Cookie("name", "Sutra");
    // กำหนดอายุของ cookie เป็น 1 นาที (3600 วินาที)
    cookie.setMaxAge(3600);
    // ส่ง cookie ไปยัง client
    response.addCookie(cookie);
%>