package com.nestorgs;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.math.BigInteger;

public class DecryptServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String mensajeCifrado = request.getParameter("mensajeCifrado");
        String dStr            = request.getParameter("d");
        String nStr            = request.getParameter("n");

        try {
            BigInteger c = new BigInteger(mensajeCifrado);
            BigInteger d = new BigInteger(dStr);
            BigInteger n = new BigInteger(nStr);

            BigInteger m = c.modPow(d, n);               // descifrado
            String mensaje = new String(m.toByteArray());

            request.setAttribute("mensajeDescifrado", mensaje);
        } catch (Exception ex) {
            request.setAttribute("mensajeDescifrado",
                                 "Error al descifrar: " + ex.getMessage());
        }

        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}
