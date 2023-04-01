package javat2p8;
/**
 *
 * @author pablo
 */
import java.util.ArrayList;
import java.util.Scanner;

public class Javat2p8 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String tortaDisponible, sabor, cantidad, decoracion;
        int ventasDiarias = 0, cantidadVendida, opcion = 0;

        System.out.println("Bienvenido a la aplicación de registro de pedidos de Don Carlos, el mejor pastelero de la ciudad");
        int cantidadTotalVendida=0;
        while (opcion != 4) {
            System.out.println();
            System.out.println("Por favor, seleccione una opción:");
            System.out.println("1. Registrar pedido");
            System.out.println("2. Ver tortas disponibles");
            System.out.println("3. Ver ventas diarias");
            System.out.println("4. Salir");
            opcion = sc.nextInt();

            if (opcion == 1) {
                System.out.println();
                System.out.println("Ingrese el sabor de la torta (ejemplo: chocolate, vainilla, etc.):");
                sabor = sc.next();
                System.out.println("Ingrese la cantidad de porciones:");
                cantidad = sc.next();
                System.out.println("Ingrese la decoración (ejemplo: con flores, con frutas, etc.):");
                decoracion = sc.next();
                cantidadTotalVendida=cantidadTotalVendida+1;
                System.out.println();
                System.out.println("Pedido registrado con éxito:");
                System.out.println("Sabor: " + sabor);
                System.out.println("Cantidad: " + cantidad);
                System.out.println("Decoración: " + decoracion);

            } else if (opcion == 2) {
                System.out.println();
                System.out.println("Las tortas disponibles son:");
                System.out.println("1. Torta de chocolate");
                System.out.println("2. Torta de vainilla");
                System.out.println("3. Torta de fresa");

            } else if (opcion == 3) {
                System.out.println();
                System.out.println("Las ventas diarias son:");
                System.out.println(cantidadTotalVendida);

            } else if (opcion == 4) {
                System.out.println();
                System.out.println("¡Gracias por utilizar nuestra aplicación!");

            } else {
                System.out.println();
                System.out.println("Opción no válida. Por favor, seleccione una opción válida.");
            }
        }
    }
}
