package javat3p8;
/**
 *
 * @author pablo
 */
import java.util.ArrayList;
import java.util.Scanner;

class Usuario {
    private String nombre;
    private boolean aprobado;

    public Usuario(String nombre) {
        this.nombre = nombre;
        this.aprobado = false;
    }

    public String getNombre() {
        return nombre;
    }

    public void setAprobado(boolean aprobado) {
        this.aprobado = aprobado;
    }

    public boolean isAprobado() {
        return aprobado;
    }
}

class EscuelaAutomovilistica {
    private ArrayList<Usuario> usuarios;
    private final int capacidadMaxima = 8;

    public EscuelaAutomovilistica() {
        usuarios = new ArrayList<Usuario>();
    }

    public void registrarUsuario(Usuario usuario) {
        if (usuarios.size() < capacidadMaxima) {
            usuarios.add(usuario);
            System.out.println("Usuario registrado exitosamente.");
        } else {
            System.out.println("Lo siento, la escuela ha alcanzado su capacidad máxima.");
        }
    }

    public void consultarUsuarios() {
        for (Usuario usuario : usuarios) {
            System.out.println(usuario.getNombre() + " - " + (usuario.isAprobado() ? "Aprobado" : "No Aprobado"));
        }
    }
    public void aprobarUsuario(String nombre) {
    for (Usuario usuario : usuarios) {
        if (usuario.getNombre().equals(nombre)) {
            usuario.setAprobado(true);
            System.out.println("Usuario aprobado exitosamente.");
            return;
        }
    }
    System.out.println("No se encontró al usuario.");
}
}

public class Javat3p8 {
    public static void main(String[] args) {
        EscuelaAutomovilistica escuela = new EscuelaAutomovilistica();
        Scanner scanner = new Scanner(System.in);
        boolean continuar = true;

        while (continuar) {
            System.out.println("1. Registrar usuario");
            System.out.println("2. Consultar usuarios");
            System.out.println("3. Salir");
            System.out.println("4. Aprobar usuario"); // Nueva opción
            int opcion = scanner.nextInt();
            scanner.nextLine();

            switch (opcion) {
                case 1:
                    System.out.println("Ingrese el nombre del usuario:");
                    String nombre = scanner.nextLine();
                    escuela.registrarUsuario(new Usuario(nombre));
                    break;
                case 2:
                    escuela.consultarUsuarios();
                    break;
                case 3:
                    continuar = false;
                    break;
                default:
                    System.out.println("Opción inválida.");
                    break;
                case 4:
    System.out.println("Ingrese el nombre del usuario a aprobar:");
     nombre = scanner.nextLine();
    escuela.aprobarUsuario(nombre);
    break;
            }
        }

        scanner.close();
    }
}
