package javat4p1;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat4p1 {
    private int[] vector;
    private Scanner scanner;

    public Javat4p1(int size) {
        vector = new int[size];
        scanner = new Scanner(System.in);
    }

    public void llenarVector() {
        for (int i = 0; i < vector.length; i++) {
            System.out.print("Ingrese el valor para la posición " + i + ": ");
            vector[i] = scanner.nextInt();
        }
    }

    public void imprimirVector() {
        for (int i = 0; i < vector.length; i++) {
            System.out.println("[" + i + "] = " + vector[i]);
        }
    }

    public static void main(String[] args) {
        Javat4p1 miVector = new Javat4p1
        (5);
        miVector.llenarVector();
        miVector.imprimirVector();
    }
}