package javat2p1;
/**
 *
 * @author pablo
 */
import java.util.Scanner;

public class Javat2p1 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Por favor, ingrese su edad: ");
    int edad = sc.nextInt();

    if (edad >= 18) {
      System.out.println("Usted es mayor de edad.");
    }

    sc.close();
  }
}