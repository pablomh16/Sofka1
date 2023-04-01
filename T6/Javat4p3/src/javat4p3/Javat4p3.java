package javat4p3;
/**
 *
 * @author pablo
 */
public class Javat4p3 {
    public static void main(String[] args) {
        for (int i = 1; i <= 1000; i++) {
            if (esPrimo(i)) {
                System.out.println(i);
            }
        }
    }

    public static boolean esPrimo(int n) {
        if (n <= 1) {
            return false;
        }
        for (int i = 2; i < n; i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
}