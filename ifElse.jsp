<div> IF ELSE </div>  <!-- แสดงหัวข้อความว่า IF ELSE -->
<form action="ifElse.jsp" method="post">  <!-- สร้างฟอร์มเพื่อส่งค่าตัวแปรไปยัง ifElse.jsp -->
    <input type="text" name="age" placeholder="Age"/>  <!-- ช่องกรอกชื่อ และเพิมเงาเป็น Age -->
    <input type="submit" name="Submit" />  <!-- ช่องกรอกอายุ และเพิมเงาเป็น Enter your age -->
</form> <!-- ส่งค่าผ่าน Form -->

<%
    if (request.getParameter("age") != null) {  // ตรวจสอบว่าตัวแปร age ไม่เป็น null
        int age = Integer.parseInt(request.getParameter("age"));  // แปลงค่าตัวแปร age เป็น int

        if (age < 18) {  // ตรวจสอบว่าอายุน้อยกว่า 18
            out.println("You are an adult");  // แสดงข้อความว่าเป็นผู้ใหญ่
            } else  {  // ตรวจสอบว่าอายุเท่ากับหรือมากกว่า 18
            out.println("You are an adult");  // แสดงข้อความว่าเป็นผู้ใหญ่
        }
    }
%>




    