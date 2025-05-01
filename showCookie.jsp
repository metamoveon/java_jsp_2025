<%
// สร้างคุกกี้ใหม่จะทำให้เห็นค่ารหัสผ่านที่เก็บไว้ในคุกกี้เสี่ยงต่อการถูกขโมยได้ปัจจุบันใช้ session แทน
Cookie [] cookies = request.getCookies(); // รับค่าคุกกี้ทั้งหมด
if (cookies != null) { // ตรวจสอบว่าคุกกี้ไม่เป็น null
    for (Cookie cookie : cookies) { // วนลูปคุกกี้ทั้งหมด
        out.println(cookie.getName() + " : " + cookie.getValue() + "<br>"); // แสดงชื่อและค่า ของคุกกี้ br คือการขึ้นบรรทัดใหม่
    }
}

%>