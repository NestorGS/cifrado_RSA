import java.math.BigInteger;
import java.security.SecureRandom;

public class RsaUtils {
    public BigInteger p, q, n, phi, e, d;

    public void generateKeys() {
        SecureRandom rand = new SecureRandom();
        p = BigInteger.probablePrime(512, rand);
        q = BigInteger.probablePrime(512, rand);
        n = p.multiply(q);
        phi = p.subtract(BigInteger.ONE).multiply(q.subtract(BigInteger.ONE));
        e = BigInteger.valueOf(65537);
        d = e.modInverse(phi);
    }

    public String encrypt(String message, BigInteger e, BigInteger n) {
        return new BigInteger(message.getBytes()).modPow(e, n).toString();
    }

    public String decrypt(String encrypted, BigInteger d, BigInteger n) {
        BigInteger decrypted = new BigInteger(encrypted).modPow(d, n);
        return new String(decrypted.toByteArray());
    }
}
