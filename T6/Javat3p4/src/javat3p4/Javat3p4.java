package javat3p4;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat3p4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese el número para crear la tabla de multiplicar: ");
        int numero = sc.nextInt();
        sc.close();
        
        Tabla tabla = new Tabla(numero);
        tabla.crearTabla();
    }
}

class Tabla {
    private int numero;

    public Tabla(int numero) {
        this.numero = numero;
    }

    public void crearTabla() {
        int resultado;
        for (int i = 1; i <= 10; i++) {
            resultado = i * numero;
            System.out.println(i + "x" + numero + "=" + resultado);
        }
    }
}
