package javat2p7;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat2p7 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduce tu peso en kilogramos: ");
        double peso = scanner.nextDouble();

        System.out.print("Introduce tu estatura en metros: ");
        double estatura = scanner.nextDouble();

        IMC imc = new IMC(peso, estatura);
        double resultadoIMC = imc.calcularIMC();
        String rango = imc.determinarRango();

        System.out.println("Tu IMC es: " + resultadoIMC);
        System.out.println("Te encuentras en el rango de: " + rango);
    }
}

class IMC {
    private double peso;
    private double estatura;

    public IMC(double peso, double estatura) {
        this.peso = peso;
        this.estatura = estatura;
    }

    public double calcularIMC() {
        return peso / (estatura * estatura);
    }

    public String determinarRango() {
        double imc = calcularIMC();
        if (imc < 18.5) {
            return "Bajo peso";
        } else if (imc >= 18.5 && imc < 25) {
            return "Normal";
        } else if (imc >= 25 && imc < 30) {
            return "Sobrepeso";
        } else {
            return "Obeso";
        }
    }
}