package javat1p5;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat1p5 {
    private String nombre;
    private int edad;
    private String tipo;
    private String nombreCompleto;

    public Javat1p5(String nombre, int edad, String tipo, String nombreCompleto) {
        this.nombre = nombre;
        this.edad = edad;
        this.tipo = tipo;
        this.nombreCompleto = nombreCompleto;
    }

    public String getNombre() {
        return nombre;
    }

    public int getEdad() {
        return edad;
    }

    public String getTipo() {
        return tipo;
    }

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Ingrese el nombre de su mascota: ");
        String nombreMascota = scanner.nextLine();
        
        System.out.print("Ingrese la edad de su mascota: ");
        int edadMascota = scanner.nextInt();
        scanner.nextLine(); // limpiar buffer
        
        System.out.print("Ingrese el tipo (animal) de su mascota: ");
        String tipoMascota = scanner.nextLine();
        
        System.out.print("Ingrese su nombre completo: ");
        String nombreCompleto = scanner.nextLine();

        Javat1p5 mascota = new Javat1p5(nombreMascota, edadMascota, tipoMascota, nombreCompleto);
        
        System.out.println(mascota.getNombre() + " es un(a) " + mascota.getTipo() + ", tiene " +
            mascota.getEdad() + " años de edad y " + mascota.getNombreCompleto() + " es su dueño(a).");
    }
}
