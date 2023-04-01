package javat2p3;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat2p3 {
    private String nombre;
    private String apellidos;
    private int edad;

    public Javat2p3(String nombre, String apellidos, int edad) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.edad = edad;
    }

    public String getNombreCompleto() {
        return this.nombre + " " + this.apellidos;
    }

    public int getEdad() {
        return this.edad;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese su nombre: ");
        String nombre = scanner.nextLine();
        System.out.print("Ingrese sus apellidos: ");
        String apellidos = scanner.nextLine();
        System.out.print("Ingrese la edad: ");
        int edad = scanner.nextInt();

        Javat2p3 persona = new Javat2p3(nombre, apellidos, edad);

        if (persona.getEdad() >= 18) {
            System.out.println(persona.getNombreCompleto() + " usted es mayor de edad, por lo tanto puede entrar a la fiesta.");
        } else {
            System.out.println(persona.getNombreCompleto() + " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.");
        }
    }
}
