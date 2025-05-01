<div> Using Session </div>

<%
    // สร้าง session
    session.setAttribute("name","Sutra"); // สร้าง session ใหม่โดยใช้ setAttribute กำหนดชื่อ session เป็น name และค่าเป็น Sutra
    session.setAttribute("age", 20); // กำหนดค่าอายุเป็น 20

    String name = (String) session.getAttribute("name"); // ดึงค่าชื่อจาก session
    Integer age = (Integer) session.getAttribute("age"); // ดึงค่าอายุจาก session

    out.println("Name: " + name + "<br>"); // แสดงชื่อ
    out.println("Age: " + age + "<br>"); // แสดงอายุ
%>
<!-- กำหนดให้ session หมดอายุหลังจาก 30 นาที -->