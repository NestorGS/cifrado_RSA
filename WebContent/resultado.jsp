<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado RSA</title>
    <style>
        body {
            background-color: #121212;
            color: #e0e0e0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 700px;
            margin: 60px auto;
            padding: 30px;
            background-color: #1e1e1e;
            border-radius: 10px;
            box-shadow: 0 0 15px #000000aa;
        }

        h1, h2 {
            color: #00bcd4;
            text-align: center;
        }

        p {
            margin: 10px 0;
            font-size: 1.1em;
        }

        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #00bcd4;
            color: #121212;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #00acc1;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>📋 Resultado</h1>

    <%
        if (request.getAttribute("mensajeCifrado") != null) {
    %>
        <h2>Resultado de Cifrado</h2>
        <p><strong>Mensaje cifrado:</strong> <%= request.getAttribute("mensajeCifrado") %></p>
        <p><strong>Clave pública e:</strong> <%= request.getAttribute("e") %></p>
        <p><strong>Clave n:</strong> <%= request.getAttribute("n") %></p>
        <p><strong>Clave privada d:</strong> <%= request.getAttribute("d") %></p>
    <%
        } else if (request.getAttribute("mensajeDescifrado") != null) {
    %>
        <h2>Resultado de Descifrado</h2>
        <p><strong>Mensaje descifrado:</strong> <%= request.getAttribute("mensajeDescifrado") %></p>
    <%
        } else {
    %>
        <p>No se ha recibido ningún resultado.</p>
    <%
        }
    %>

    <a href="index.jsp" class="btn">⬅ Volver</a>
</div>
</body>
</html>
