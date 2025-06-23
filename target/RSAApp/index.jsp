<html>
<head><title>RSA - Cifrado</title></head>
<body>
<h2>Cifrar mensaje</h2>
<form action="EncryptServlet" method="post">
    Mensaje: <input type="text" name="mensaje" />
    <input type="submit" value="Cifrar" />
</form>

<h2>Descifrar mensaje</h2>
<form action="DecryptServlet" method="post">
    Mensaje cifrado: <input type="text" name="mensajeCifrado" /><br/>
    Clave privada d: <input type="text" name="d" /><br/>
    Clave n: <input type="text" name="n" /><br/>
    <input type="submit" value="Descifrar" />
</form>
</body>
</html>
