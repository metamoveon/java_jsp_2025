<!-- sendVariable.jsp -->
<!DOCTYPE html>
<html5>
<head>
    <title>Send Variable</title>
</head>
<body>

<!-- ส่งค่าผ่าน URL แบบลิงก์ -->
<a href="receiveVariable.jsp?name=Sutra&age=47">
    Send Variable via URL
</a>

<br><br>

<!-- ส่งค่าผ่านฟอร์ม -->
<form action="receiveVariable.jsp" , "usingJS.jsp" method="GET">
    Name: <input type="text" name="name"><br>
    Age: <input type="text" name="age"><br>
    <input type="submit" value="Submit">
</form>


</body>
</html5>
