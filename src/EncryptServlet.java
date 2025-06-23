import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;

public class EncryptServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String message = request.getParameter("mensaje");

        RsaUtils rsa = new RsaUtils();
        rsa.generateKeys();

        String encrypted = rsa.encrypt(message, rsa.e, rsa.n);

        request.setAttribute("mensajeCifrado", encrypted);
        request.setAttribute("e", rsa.e.toString());
        request.setAttribute("n", rsa.n.toString());
        request.setAttribute("d", rsa.d.toString());

        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}
