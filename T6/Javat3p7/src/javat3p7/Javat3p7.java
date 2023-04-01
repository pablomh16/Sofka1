package javat3p7;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

class Parqueadero {
    private String[] placas;
    private String[] marcas;
    private String[] nombres;
    private String[] telefonos;
    private int capacidad;
    private int ocupacion;

    public Parqueadero(int capacidad) {
        this.capacidad = capacidad;
        this.ocupacion = 0;
        this.placas = new String[capacidad];
        this.marcas = new String[capacidad];
        this.nombres = new String[capacidad];
        this.telefonos = new String[capacidad];
    }

    public boolean ingresarVehiculo(String placa, String marca, String nombre, String telefono) {
        if (ocupacion < capacidad) {
            placas[ocupacion] = placa;
            marcas[ocupacion] = marca;
            nombres[ocupacion] = nombre;
            telefonos[ocupacion] = telefono;
            ocupacion++;
            return true;
        } else {
            return false;
        }
    }

    public boolean retirarVehiculo(String placa) {
        for (int i = 0; i < ocupacion; i++) {
            if (placas[i].equals(placa)) {
                for (int j = i; j < ocupacion - 1; j++) {
                    placas[j] = placas[j + 1];
                    marcas[j] = marcas[j + 1];
                    nombres[j] = nombres[j + 1];
                    telefonos[j] = telefonos[j + 1];
                }
                ocupacion--;
                return true;
            }
        }
        return false;
    }

    public boolean consultarVehiculo(String placa) {
        for (int i = 0; i < ocupacion; i++) {
            if (placas[i].equals(placa)) {
                return true;
            }
        }
        return false;
    }
}

public class Javat3p7 {
    public static void main(String[] args) {
        Parqueadero parqueadero = new Parqueadero(5);
        Scanner scanner = new Scanner(System.in);
        boolean terminar = false;

        while (!terminar) {
            System.out.println("Ingrese una opción:");
            System.out.println("1. Ingresar vehículo al parqueadero");
            System.out.println("2. Retirar vehículo del parqueadero");
            System.out.println("3. Consultar si un vehículo se encuentra en el parqueadero");
            System.out.println("4. Terminar");
            int opcion = scanner.nextInt();
            scanner.nextLine();

            switch (opcion) {
                case 1:
                    System.out.println("Ingrese la placa del vehículo:");
                    String placa = scanner.nextLine();
                    System.out.println("Ingrese la marca del vehículo:");
                    String marca = scanner.nextLine();
                    System.out.println("Ingrese el nombre completo del cliente:");
                    String nombre = scanner.nextLine();
                    System.out.println("Ingrese el número de teléfono del cliente:");
                    String telefono = scanner.nextLine();
                    boolean ingresado = parqueadero.ingresarVehiculo(placa, marca, nombre, telefono);
                    if (ingresado) {
                        System.out.println("Vehículo ingresado al parqueadero.");
                    } else {
                        System.out.println("No hay espacio disponible en el parqueadero.");
                    }
                    break;
                case 2:
                    System.out.println("Ingrese la placa del vehículo a retirar:");
                    placa = scanner.nextLine();
                    boolean retirado = parqueadero.retirarVehiculo(placa);
                    if (retirado) {
                        System.out.println("Vehículo retirado del parqueadero.");
                    } else {
                        System.out.println("El vehículo no se encuentra en el parqueadero.");
                    }
                    break;
                case 3:
                    System.out.println("Ingrese la placa del vehículo a consultar:");
                    placa = scanner.nextLine();
                    boolean encontrado = parqueadero.consultarVehiculo(placa);
                    if (encontrado) {
                         System.out.println("El vehículo se encuentra en el parqueadero.");
                    } else {
                        System.out.println("El vehículo no se encuentra en el parqueadero.");
                           }
                    break;
                   case 4:
                    terminar = true;
                    break;
                    default:
                        System.out.println("Opción inválida.");
                    break;
                    }
                    }
                        scanner.close();
                }
}
