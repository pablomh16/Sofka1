package javt2p6c;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javt2p6c {
    private String matricula;
    private int cilindraje;
    private String fechaIngreso;
    private String observacionesCliente;
    private String fechaSalida;
    private String novedades = "";
    private String arreglos = "";

    public Javt2p6c(String matricula, int cilindraje, String fechaIngreso, String observacionesCliente, String fechaSalida) {
        this.matricula = matricula;
        this.cilindraje = cilindraje;
        this.fechaIngreso = fechaIngreso;
        this.observacionesCliente = observacionesCliente;
        this.fechaSalida = fechaSalida;
    }

    public void revisarMotocicleta() {
        Scanner scanner = new Scanner(System.in);
        if (cilindraje > 500) {
            System.out.println("La motocicleta de alta cilindrada necesita revisión adicional");
            System.out.println("Ingrese las novedades encontradas:");
            novedades = scanner.nextLine();
        }
    }

    public void hacerArreglos() {
        Scanner scanner = new Scanner(System.in);
        if (!novedades.equals("")) {
            System.out.println("Ingrese los arreglos hechos en la motocicleta:");
            arreglos = scanner.nextLine();
        }
    }

    public void mostrarInformacion() {
        System.out.println("Motocicleta con matrícula " + matricula + " y cilindraje " + cilindraje);
        System.out.println("Fecha de ingreso: " + fechaIngreso);
        System.out.println("Observaciones del cliente: " + observacionesCliente);
        if (!novedades.equals("")) {
            System.out.println("Novedades encontradas: " + novedades);
        }
        System.out.println("Fecha de salida: " + fechaSalida);
        if (!arreglos.equals("")) {
            System.out.println("Arreglos hechos en la motocicleta: " + arreglos);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Ingrese la matrícula de la motocicleta:");
        String matricula = scanner.nextLine();

        System.out.println("Ingrese el cilindraje de la motocicleta:");
        int cilindraje = scanner.nextInt();
        scanner.nextLine();

        System.out.println("Ingrese la fecha de ingreso de la motocicleta:");
        String fechaIngreso = scanner.nextLine();

        System.out.println("Ingrese las observaciones del cliente:");
        String observacionesCliente = scanner.nextLine();

        System.out.println("Ingrese la fecha de salida de la motocicleta:");
        String fechaSalida = scanner.nextLine();

        Javt2p6c moto = new Javt2p6c(matricula, cilindraje, fechaIngreso, observacionesCliente, fechaSalida);
        moto.revisarMotocicleta();
        moto.hacerArreglos();
        moto.mostrarInformacion();
    }
}
