package com.nestorgs;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.math.BigInteger;

public class EncryptServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String mensaje = request.getParameter("mensaje");

        // — RSA MUY simplificado (solo demostración) —
        BigInteger p  = new BigInteger("11");
        BigInteger q  = new BigInteger("13");
        BigInteger n  = p.multiply(q);                         // n = 143
        BigInteger fi = p.subtract(BigInteger.ONE)
                         .multiply(q.subtract(BigInteger.ONE)); // φ = 120
        BigInteger e  = new BigInteger("7");                   // e = 7
        BigInteger d  = e.modInverse(fi);                      // d = 103
        BigInteger m  = new BigInteger(mensaje.getBytes());    // mensaje → número
        BigInteger c  = m.modPow(e, n);                        // cifrado

        // Datos hacia resultado.jsp
        request.setAttribute("mensajeCifrado", c.toString());
        request.setAttribute("e", e.toString());
        request.setAttribute("n", n.toString());
        request.setAttribute("d", d.toString());

        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}
