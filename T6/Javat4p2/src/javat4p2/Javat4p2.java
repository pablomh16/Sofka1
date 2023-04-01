package javat4p2;
/**
 *
 * @author pablo
 */
import java.util.Random;

public class Javat4p2 {
    public static void main(String[] args) {
        Javat4p2 arreglo = new Javat4p2(20);
        arreglo.llenarNumerosAleatorios(1, 100);
        arreglo.imprimirNumerosPares();
        arreglo.imprimirNumerosImpares();
    }
    private int[] numeros;

    public Javat4p2(int size) {
        numeros = new int[size];
    }

    public void llenarNumerosAleatorios(int min, int max) {
        Random rand = new Random();
        for (int i = 0; i < numeros.length; i++) {
            numeros[i] = rand.nextInt(max - min + 1) + min;
        }
    }

    public void imprimirNumerosPares() {
        System.out.print("Números pares: ");
        for (int num : numeros) {
            if (num % 2 == 0) {
                System.out.print(num + " ");
            }
        }
        System.out.println();
    }

    public void imprimirNumerosImpares() {
        System.out.print("Números impares: ");
        for (int num : numeros) {
            if (num % 2 != 0) {
                System.out.print(num + " ");
            }
        }
        System.out.println();
    }
}

