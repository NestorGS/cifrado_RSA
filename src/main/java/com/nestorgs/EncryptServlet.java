package com.nestorgs;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.math.BigInteger;

public class EncryptServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mensaje = request.getParameter("mensaje");

        // Asegúrate de que esto haga el cálculo correctamente
        // P, Q, N, E, D, mensajeCifrado
        // Lógica RSA simplificada

        BigInteger p = new BigInteger("11");
        BigInteger q = new BigInteger("13");
        BigInteger n = p.multiply(q);
        BigInteger fi = (p.subtract(BigInteger.ONE)).multiply(q.subtract(BigInteger.ONE));
        BigInteger e = new BigInteger("7");
        BigInteger d = e.modInverse(fi);
        BigInteger m = new BigInteger(mensaje.getBytes());
        BigInteger c = m.modPow(e, n);

        request.setAttribute("mensajeCifrado", c.toString());
        request.setAttribute("e", e.toString());
        request.setAttribute("n", n.toString());
        request.setAttribute("d", d.toString());

        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}
