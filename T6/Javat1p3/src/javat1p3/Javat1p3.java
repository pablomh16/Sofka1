package javat1p3;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat1p3 {
    private String nombre;
    private String apellidoPaterno;
    private String apellidoMaterno;

    public Javat1p3(String nombre, String apellidoPaterno, String apellidoMaterno) {
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getNombreCompleto() {
        return this.nombre + " " + this.apellidoPaterno + " " + this.apellidoMaterno;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Ingrese su nombre: ");
        String nombre = scanner.nextLine();

        System.out.print("Ingrese su apellido paterno: ");
        String apellidoPaterno = scanner.nextLine();

        System.out.print("Ingrese su apellido materno: ");
        String apellidoMaterno = scanner.nextLine();

        Javat1p3 persona = new Javat1p3(nombre, apellidoPaterno, apellidoMaterno);

        System.out.print("Ingrese el nombre de su padre: ");
        String nombrePadre = scanner.nextLine();

        System.out.print("Ingrese el apellido paterno de su padre: ");
        String apellidoPaternoPadre = scanner.nextLine();

        System.out.print("Ingrese el apellido materno de su padre: ");
        String apellidoMaternoPadre = scanner.nextLine();

        Javat1p3 padre = new Javat1p3(nombrePadre, apellidoPaternoPadre, apellidoMaternoPadre);

        System.out.print("Ingrese el nombre de su madre: ");
        String nombreMadre = scanner.nextLine();

        System.out.print("Ingrese el apellido paterno de su madre: ");
        String apellidoPaternoMadre = scanner.nextLine();

        System.out.print("Ingrese el apellido materno de su madre: ");
        String apellidoMaternoMadre = scanner.nextLine();

        Javat1p3 madre = new Javat1p3(nombreMadre, apellidoPaternoMadre, apellidoMaternoMadre);

        System.out.println("Yo " + persona.getNombreCompleto() + ", soy hijo de " + madre.getNombreCompleto() + " y " + padre.getNombreCompleto());
    }
}
