<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div class="header">
        <div class="logo">
            
        </div>

        <div class="header-links">
            <a class="header-link" href="./index.html"> Список пользователей </a>
            <a class="header-link" href="./add.html"> Создать пользователя </a>
        </div>
    </div>
    <div class="container">

        <h1>Создание пользователя</h1>

        <div class="add-box">
            <form method="POST" action="/unnamed/add">
                <div class="field">
                    <label for="name">Имя</label>
                    <input type="text" name="name" placeholder="Имя">
                </div>

                <div class="field">
                    <label for="email">Почта</label>
                    <input type="text" name="email" placeholder="Почта">
                </div>

                <div class="field">
                    <input type="submit" value="Создать">
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>