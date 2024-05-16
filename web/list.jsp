<%@ page import="java.util.List" %>
<%@ page import="org.example.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Управление пользователями</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div class="header">
        <div class="logo">
            
        </div>

        <div class="header-links">
            <a class="header-link" href="./list"> Список пользователей </a>
            <a class="header-link" href="./add"> Создать пользователя </a>
        </div>
    </div>
    <div class="container">

        <h1>Управление пользователями</h1>

        <table class="table">
            <thead>
                <tr>
                    <th> # </th>
                    <th> Имя </th>
                    <th> Почта </th>
                    <th> Управление </th>
                </tr>
            </thead>
    
            <tbody>
                <%
                    List<User> users = (List<User>) request.getAttribute("users");

                    if (users != null && !users.isEmpty()) {
                        for (User user : users) {
                            out.println("<tr>");
                            out.println("<td>" + user.getId() + "</td>");
                            out.println("<td>" + user.getName() + "</td>");
                            out.println("<td>" + user.getEmail() + "</td>");
                            out.println(
                                "<td>"
                                + "<a class='clickable delete' href='/unnamed/delete?id=" + user.getId() + "'>"
                                + "<i class='fa-solid fa-trash'></i> Удалить"
                                + "</a>"
                                + "</td>"
                            );
                            out.println("</tr>");
                        }
                    }
                %>
            </tbody>
        </table>
    </div>
    
</body>
</html>

