<script src = "https://cdn.tailwindcss.com"></script>  <!--สร้างการใช้งาน tailwind -->

<div class="bg-red-500 ">  <!-- สร้าง div ที่มีพื้นหลังสีแดง -->
    <h1 class="text-3xl font-bold text-white p-4">
        Hello world!
    </h1>  <!-- สร้างหัวข้อที่มีขนาด 3xl ตัวหนา สีขาว -->
</div>

<style type="text/tailwindcss"> 
    @import url('https://cdn.jsdelivr.net/npm/tailwindcss@4.0.0/dist/tailwind.min.css');
        .button {
            @apply bg-blue-500 text-white p-4 rounded-md;
        
        }   
</style>

<button class="button m-4">  <!-- สร้างปุ่มที่มี class button -->
    Click me
</button>