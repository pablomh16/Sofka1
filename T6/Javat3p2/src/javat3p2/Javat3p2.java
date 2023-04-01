package javat3p2;
/**
 *
 * @author pablo
 */
public class Javat3p2 {
    private int contador;
    private int nEspacios;
    private int cEspacios;
    private int prueba;
    private int cont;
    private int avanzar;
    private int cont2;
    private String figura;
    private String tab;

    public Javat3p2() {
        contador = 9;
        nEspacios = 10;
        cEspacios = 1;
        prueba = 0;
        cont = 0;
        avanzar = 1;
        cont2 = 0;
        figura = "*";
        tab = "";
    }

    public void construirFigura() {
        System.out.println("           *");

        while (cont2 < 10) {
            while (contador > 0) {
                if (prueba < avanzar) {
                    figura += "*";
                    prueba++;
                }
                tab += " ";
                contador--;
            }
            System.out.println(tab + figura);

            cont++;
            avanzar++;
            prueba = cont;
            tab = "";
            cont2++;
            contador = 9 - cont2;
        }
    }

    public static void main(String[] args) {
        Javat3p2 pun2 = new Javat3p2();
        pun2.construirFigura();
    }
}
