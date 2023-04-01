
package javat1p1;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat1p1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingresa tu nombre: ");
        String nombre = scanner.nextLine();
        System.out.print("Ingresa tus apellidos: ");
        String apellidos = scanner.nextLine();
        
        Persona persona = new Persona(nombre, apellidos);
        System.out.println("¡Hola " + persona.getNombreCompleto() + "! Bienvenido(a).");
    }
}

class Persona {
    private String nombre;
    private String apellidos;
    
    public Persona(String nombre, String apellidos) {
        this.nombre = nombre;
        this.apellidos = apellidos;
    }
    
    public String getNombreCompleto() {
        return nombre + " " + apellidos;
    }
}

