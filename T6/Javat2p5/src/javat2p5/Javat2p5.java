package javat2p5;
/**
 *
 * @author pablo
 */
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Javat2p5 {
    // Lista de productos de la droguería
    private ArrayList<Producto> productos;

    public Javat2p5() {
        productos = new ArrayList<>();
    }

    // Agrega un producto a la lista de productos de la droguería
    public void agregarProducto(Producto p) {
        productos.add(p);
    }

    // Imprime la lista de productos de la droguería con sus características
    public void imprimirProductos() {
        for (Producto p : productos) {
            System.out.println(p.toString());
        }
    }

    // Busca un producto por su nombre y devuelve su precio
    public double buscarPrecio(String nombre) {
        for (Producto p : productos) {
            if (p.getNombre().equals(nombre)) {
                return p.getPrecio();
            }
        }
        return -1; // Retorna -1 si el producto no se encuentra
    }

    // Realiza una devolución de un producto dado su nombre y cantidad
    public boolean devolverProducto(String nombre, int cantidad) {
        for (Producto p : productos) {
            if (p.getNombre().equals(nombre)) {
                p.setCantidad(p.getCantidad() + cantidad); // Aumenta la cantidad del producto devuelto
                return true;
            }
        }
        return false; // Retorna false si el producto no se encuentra
    }

    public static void main(String[] args) {
        Javat2p5 drogueria = new Javat2p5();

        // Agrega algunos productos a la droguería
        drogueria.agregarProducto(new Producto("Aspirina", 500, "Tabletas", 100));
        drogueria.agregarProducto(new Producto("Paracetamol", 300, "Tabletas", 50));
        drogueria.agregarProducto(new Producto("Vitaminas", 1000, "Cápsulas", 20));

        Scanner scanner = new Scanner(System.in);

        while (true) {
            // Menú principal de opciones
            System.out.println("Seleccione una opción:");
            System.out.println("1. Ver productos");
            System.out.println("2. Consultar precio de un producto");
            System.out.println("3. Realizar devolución");
            System.out.println("4. Salir");
            int opcion = scanner.nextInt();

            switch (opcion) {
                case 1:
                    drogueria.imprimirProductos();
                    break;
                case 2:
                    System.out.println("Ingrese el nombre del producto:");
                    String nombre = scanner.next();
                    double precio = drogueria.buscarPrecio(nombre);
                    if (precio == -1) {
                        System.out.println("Producto no encontrado");
                    } else {
                        System.out.println("El precio de " + nombre + " es: $" + precio);
                    }
                    break;
                case 3:
                    System.out.println("Ingrese el nombre del producto:");
                    nombre = scanner.next();
                    System.out.println("Ingrese la cantidad a devolver:");
                    int cantidad = scanner.nextInt();
                    boolean devolucionExitosa = drogueria.devolverProducto(nombre, cantidad);
                    if (devolucionExitosa) {
                        System.out.println(cantidad + " unidades de " + nombre + " han sido devueltas correctamente");
                    } else {
                        System.out.println("Producto no encontrado");
                    }
                    break;
                                case 4:
                    System.out.println("Gracias por usar la aplicación de Droguería Mi Salud");
                    return;
                default:
                    System.out.println("Opción no válida");
                    break;
            }
        }
    }
}

class Producto {
    private String nombre;
    private double precio;
    private String presentacion;
    private int cantidad;

    public Producto(String nombre, double precio, String presentacion, int cantidad) {
        this.nombre = nombre;
        this.precio = precio;
        this.presentacion = presentacion;
        this.cantidad = cantidad;
    }

    public String getNombre() {
        return nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public String getPresentacion() {
        return presentacion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    // Sobreescribe el método toString para mostrar las características del producto
    @Override
    public String toString() {
        return "Producto: " + nombre + "\nPrecio: $" + precio + "\nPresentación: " + presentacion + "\nCantidad disponible: " + cantidad + "\n";
    }
}

                   
