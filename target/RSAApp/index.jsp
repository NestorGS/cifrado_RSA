<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Cifrado RSA</title>
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

        form {
            display: flex;
            flex-direction: column;
            gap: 12px;
            margin: 20px 0;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="submit"] {
            padding: 10px;
            border-radius: 5px;
            border: none;
            font-size: 1em;
        }

        input[type="text"] {
            background-color: #2a2a2a;
            color: #e0e0e0;
        }

        input[type="submit"] {
            background-color: #00bcd4;
            color: #121212;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #00acc1;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>🔐 Aplicación de Cifrado y Descifrado RSA</h1>

    <section>
        <h2>Cifrar mensaje</h2>
        <form action="EncryptServlet" method="post">
            <label for="mensaje">Mensaje:</label>
            <input type="text" id="mensaje" name="mensaje" required />
            <input type="submit" value="Cifrar" />
        </form>
    </section>

    <section>
        <h2>Descifrar mensaje</h2>
        <form action="DecryptServlet" method="post">
            <label for="mensajeCifrado">Mensaje cifrado:</label>
            <input type="text" id="mensajeCifrado" name="mensajeCifrado" required />

            <label for="d">Clave privada d:</label>
            <input type="text" id="d" name="d" required />

            <label for="n">Clave n:</label>
            <input type="text" id="n" name="n" required />

            <input type="submit" value="Descifrar" />
        </form>
    </section>
</div>
</body>
</html>
