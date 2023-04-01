package javat2p4;
/**
 *
 * @author pablo
 */
import java.util.ArrayList;
import java.util.Scanner;

class Pelicula {
    private String nombre;

    public Pelicula(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }
}

class VideoTienda {
    private ArrayList<Pelicula> peliculasDisponibles;
    private Scanner input;

    public VideoTienda() {
        peliculasDisponibles = new ArrayList<Pelicula>();
        input = new Scanner(System.in);
    }

    public void agregarPelicula(Pelicula pelicula) {
        peliculasDisponibles.add(pelicula);
    }

    public void alquilarPelicula() {
        System.out.print("nombre de la película: ");
        String nombrePelicula = input.next();
        System.out.println("Alquilando " + nombrePelicula + "...");
    }

    public void consultarPeliculasDisponibles() {
        System.out.println("Las peliculas disponibles: ");
        for (Pelicula pelicula : peliculasDisponibles) {
            System.out.println(pelicula.getNombre());
        }
    }

    public void recibirPeliculaYRealizarAnotaciones() {
        System.out.println("¿Quieres realizar un comentario?");
        System.out.println("1. Si");
        System.out.println("2. No");
        int comentario = input.nextInt();

        if (comentario == 1) {
            System.out.print("Ingrese comentario: ");
            String novedad = input.next();
            System.out.println("La Novedad ha sido registrada de forma correcta");
        } else {
            System.out.println("Saliendo del sistema");
        }
    }
}

public class Javat2p4 {

    public static void main(String[] args) {
        VideoTienda tienda = new VideoTienda();
        tienda.agregarPelicula(new Pelicula("Peli N1"));
        tienda.agregarPelicula(new Pelicula("Peli N2"));
        tienda.agregarPelicula(new Pelicula("Peli N3"));

        Scanner input = new Scanner(System.in);
        
        System.out.println("Bienvenido a la video tienda El Porvenir");
        
        while (true) {
            System.out.println("1. Alquilar película");
            System.out.println("2. Consultar películas disponibles");
            System.out.println("3. Recibir película y realizar anotaciones");
            System.out.println("4. Salir");
            
            int opcion = input.nextInt();
            if (opcion == 4) {
                break;
            }
            
            switch(opcion) {
                case 1:
                    tienda.alquilarPelicula();
                    break;
                case 2:
                    tienda.consultarPeliculasDisponibles();
                    break;
                case 3:
                    tienda.recibirPeliculaYRealizarAnotaciones();
                    break;
                default:
                    System.out.println("opción no válida");
                    break;
            }
        }
    }
}