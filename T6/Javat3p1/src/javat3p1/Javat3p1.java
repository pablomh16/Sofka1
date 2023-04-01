package javat3p1;
/**
 *
 * @author pablo
 */
public class Javat3p1 {
    private String concatenacion;
    
    public Javat3p1() {
        concatenacion = "";
    }
    
    public void imprimirTriangulo() {
        for (int i = 1; i <= 10; i++) {
            for (int j = 1; j <= i; j++) {
                if (i == 1) {
                    System.out.print("*");
                } else {
                    System.out.print("*" + concatenacion);
                }
            }
            System.out.println("");
        }
    }
    
    public static void main(String[] args) {
        Javat3p1 triangulo = new Javat3p1();
        triangulo.imprimirTriangulo();
    }
}
