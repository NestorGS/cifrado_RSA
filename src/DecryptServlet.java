import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.math.BigInteger;

public class DecryptServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String mensajeCifrado = request.getParameter("mensajeCifrado");
        String d = request.getParameter("d");
        String n = request.getParameter("n");

        RsaUtils rsa = new RsaUtils();
        String mensajeDescifrado = rsa.decrypt(mensajeCifrado, new BigInteger(d), new BigInteger(n));

        request.setAttribute("mensajeDescifrado", mensajeDescifrado);
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}
