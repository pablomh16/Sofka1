package javat3p3;
/**
 *
 * @author pablo
 */
public class Javat3p3 {
    
    private int contador;
    private int espacios;
    private int c_espacios;
    private String signo;
    private String tab;
    public static void main(String[] args) {
        Javat3p3 pun3 = new Javat3p3();
        pun3.ejecutar();
    }
    
    public Javat3p3() {
        contador = 0;
        espacios = 10;
        c_espacios = 1;
        signo = "*";
        tab = "";
    }
    
    public void ejecutar() {
        System.out.println("           *     ");
        
        for (int i = 1; i <= 10; i++) {
            //primer ciclo
            while (contador <= i) {
                signo += "*";
                contador++;
            }
            //Segundo ciclo
            while (c_espacios <= espacios) {
                tab += " ";
                c_espacios++;
            }
            
            System.out.println(tab + signo);
            contador--;
            espacios--;
            c_espacios = 1;
            tab = "";
        }
        
        int i = 0;
        while (i < 2) {
            System.out.println("         *****");
            i++;
            if (i == 1) {
                System.out.println("        *******");
            }
        }
    }
}

