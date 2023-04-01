package javat2p10;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat2p10 {
    private String titular;
    private double saldo;

    public Javat2p10(String titular, double saldo) {
        this.titular = titular;
        this.saldo = saldo;
    }

    public void depositar(double cantidad) {
        if (cantidad > 0) {
            saldo += cantidad;
            System.out.println("Ingreso realizado correctamente");
        } else {
            System.out.println("Error: no se pueden ingresar valores negativos");
        }
    }

    public void retirar(double cantidad) {
        if (cantidad <= saldo) {
            saldo -= cantidad;
            System.out.println("Retiro realizado correctamente");
        } else {
            System.out.println("Error: fondos insuficientes");
        }
    }

    public void consultarSaldo() {
        System.out.println("Saldo actual: $" + saldo);
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Bienvenido a Su banco fiel");
        System.out.print("Ingrese su nombre: ");
        String titular = sc.nextLine();
        System.out.print("Ingrese la cantidad inicial: ");
        double saldo = sc.nextDouble();
        Javat2p10 cuenta = new Javat2p10(titular, saldo);

        int opcion;
        do {
            System.out.println();
            System.out.println("Titular: " + cuenta.titular);
            System.out.println("Cantidad: $" + cuenta.saldo);
            System.out.println("1 - Ingreso de dinero");
            System.out.println("2 - Retiro de dinero");
            System.out.println("3 - Consulta de saldo");
            System.out.println("0 - Salir");
            System.out.print("Seleccione una opción: ");
            opcion = sc.nextInt();

            switch (opcion) {
                case 1:
                    System.out.print("Ingrese la cantidad a ingresar: ");
                    double ingreso = sc.nextDouble();
                    cuenta.depositar(ingreso);
                    break;
                case 2:
                    System.out.print("Ingrese la cantidad a retirar: ");
                    double retiro = sc.nextDouble();
                    cuenta.retirar(retiro);
                    break;
                case 3:
                    cuenta.consultarSaldo();
                    break;
                case 0:
                    System.out.println("Adiós");
                    break;
                default:
                    System.out.println("Opción inválida");
                    break;
            }
        } while (opcion != 0);
    }
}
