package javat1p2;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat1p2 {
    private String nombre;
    private String apellidos;
    private int edad;
    private double estatura;

    public Javat1p2() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese su nombre: ");
        this.nombre = sc.nextLine();
        System.out.print("Ingrese sus apellidos: ");
        this.apellidos = sc.nextLine();
        System.out.print("Ingrese su edad: ");
        this.edad = sc.nextInt();
        System.out.print("Ingrese su estatura en metros: ");
        this.estatura = sc.nextDouble();
        sc.close();
    }

    public void mostrarDatos() {
        System.out.println("Nombre: " + this.nombre);
        System.out.println("Apellidos: " + this.apellidos);
        System.out.println("Edad: " + this.edad);
        System.out.println("Estatura: " + this.estatura);
    }

    public static void main(String[] args) {
        Javat1p2 persona = new Javat1p2();
        persona.mostrarDatos();
    }
}
