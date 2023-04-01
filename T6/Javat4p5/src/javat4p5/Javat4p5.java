package javat4p5;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

class Matriz {
    private int[][] matriz;

    public Matriz(int filas, int columnas) {
        matriz = new int[filas][columnas];
        for (int i = 0; i < filas; i++) {
            for (int j = 0; j < columnas; j++) {
                matriz[i][j] = i * j;
            }
        }
    }

    public int getValor(int fila, int columna) {
        return matriz[fila][columna];
    }
}

public class Javat4p5 {
    public static void main(String[] args) {
        Matriz matriz = new Matriz(10, 10);

        Scanner scanner = new Scanner(System.in);
        System.out.println("Por favor ingresa la fila y columna que deseas ver (separados por un espacio):");
        int fila = scanner.nextInt();
        int columna = scanner.nextInt();
        System.out.println("El resultado en la fila " + fila + " y columna " + columna + " es: " + matriz.getValor(fila, columna));
    }
}