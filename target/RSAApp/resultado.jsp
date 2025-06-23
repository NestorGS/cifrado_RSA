<%@ page language="java" %>
<html>
<head><title>Resultado</title></head>
<body>
    <h2>Resultado:</h2>
    <% if (request.getAttribute("mensajeCifrado") != null) { %>
        Mensaje cifrado: <%= request.getAttribute("mensajeCifrado") %><br/>
        Clave pública e: <%= request.getAttribute("e") %><br/>
        Clave n: <%= request.getAttribute("n") %><br/>
        Clave privada d: <%= request.getAttribute("d") %><br/>
    <% } else if (request.getAttribute("mensajeDescifrado") != null) { %>
        Mensaje descifrado: <%= request.getAttribute("mensajeDescifrado") %><br/>
    <% } %>
    <a href="index.jsp">Volver</a>
</body>
</html>
