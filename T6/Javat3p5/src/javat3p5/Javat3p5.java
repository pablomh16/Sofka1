package javat3p5;
/*
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat3p5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int opcion = 0;
        String nombre = "";
        
        do {
            System.out.println("Menu de Usuario");
            System.out.println("1. Captura nombre");
            System.out.println("2. Saludar persona");
            System.out.println("3. Salir del sistema");
            
            opcion = scanner.nextInt();
            
            switch (opcion) {
                case 1:
                    System.out.println("Ingrese su nombre:");
                    nombre = scanner.next();
                    System.out.println("Nombre capturado: " + nombre);
                    break;
                case 2:
                    if (!nombre.equals("")) {
                        System.out.println("Hola, " + nombre + "!");
                    } else {
                        System.out.println("Ingrese primero un nombre.");
                    }
                    break;
                case 3:
                    System.out.println("Adios!");
                    break;
                default:
                    System.out.println("Opcion invalida, digite un numero entre 1 y 3");
            }
            
            System.out.println("");
        } while (opcion != 3);
        
        scanner.close();
    }
}



