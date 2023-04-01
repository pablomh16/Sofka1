package javat2p9;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat2p9 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Figura figura;

        System.out.println("Seleccione la figura geométrica:");
        System.out.println("1. Rectángulo");
        System.out.println("2. Triángulo");
        System.out.println("3. Trapecio");

        int opcion = sc.nextInt();

        switch (opcion) {
            case 1:
                System.out.println("Ingrese la base del rectángulo:");
                double base = sc.nextDouble();
                System.out.println("Ingrese la altura del rectángulo:");
                double altura = sc.nextDouble();
                figura = new Rectangulo(base, altura);
                break;
            case 2:
                System.out.println("Ingrese la base del triángulo:");
                base = sc.nextDouble();
                System.out.println("Ingrese la altura del triángulo:");
                altura = sc.nextDouble();
                figura = new Triangulo(base, altura);
                break;
            case 3:
                System.out.println("Ingrese la base mayor del trapecio:");
                double baseMayor = sc.nextDouble();
                System.out.println("Ingrese la base menor del trapecio:");
                double baseMenor = sc.nextDouble();
                System.out.println("Ingrese la altura del trapecio:");
                altura = sc.nextDouble();
                figura = new Trapecio(baseMayor, baseMenor, altura);
                break;
            default:
                System.out.println("Opción inválida");
                return;
        }

        System.out.println("El área de la figura seleccionada es: " + figura.calcularArea());
    }
}

abstract class Figura {
    public abstract double calcularArea();
}

class Rectangulo extends Figura {
    private double base;
    private double altura;

    public Rectangulo(double base, double altura) {
        this.base = base;
        this.altura = altura;
    }

    public double calcularArea() {
        return base * altura;
    }
}

class Triangulo extends Figura {
    private double base;
    private double altura;

    public Triangulo(double base, double altura) {
        this.base = base;
        this.altura = altura;
    }

    public double calcularArea() {
        return (base * altura) / 2;
    }
}

class Trapecio extends Figura {
    private double baseMayor;
    private double baseMenor;
    private double altura;

    public Trapecio(double baseMayor, double baseMenor, double altura) {
        this.baseMayor = baseMayor;
        this.baseMenor = baseMenor;
        this.altura = altura;
    }

    public double calcularArea() {
        return ((baseMayor + baseMenor) * altura) / 2;
    }
}
