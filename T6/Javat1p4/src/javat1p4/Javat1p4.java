package javat1p4;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat1p4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Ingresa el nombre de la ciudad capital: ");
        String nombreCiudad = scanner.nextLine();

        System.out.print("Ingresa el nombre del país: ");
        String nombrePais = scanner.nextLine();

        Ciudad ciudad = new Ciudad(nombreCiudad, nombrePais);
        ciudad.imprimirInformacion();
    }
}

class Ciudad {
    private String nombreCiudad;
    private String nombrePais;

    public Ciudad(String nombreCiudad, String nombrePais) {
        this.nombreCiudad = nombreCiudad;
        this.nombrePais = nombrePais;
    }

    public void imprimirInformacion() {
        System.out.printf("La ciudad %s, es la capital del país %s\n", nombreCiudad, nombrePais);
    }
}
