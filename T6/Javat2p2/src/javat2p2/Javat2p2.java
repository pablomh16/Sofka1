package javat2p2;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat2p2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese su edad: ");
        int edad = scanner.nextInt();
        
        if (edad < 18) {
            System.out.println("Usted aún es un niño o niña.");
        } else {
            System.out.println("Usted ya es mayor de edad.");
        }
    }
}
