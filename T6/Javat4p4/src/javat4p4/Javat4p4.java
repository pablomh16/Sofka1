package javat4p4;
/**
 *
 * @author pablo
 */
public class Javat4p4 {
    public static void main(String[] args) {
        int[][] matriz = {{1, 2, 3, 4, 5}, {6, 7, 8, 9, 10}, {11, 12, 13, 14, 15}, {16, 17, 18, 19, 20}};
        for (int i = 0; i < matriz.length; i++) {
            if (i % 2 == 0) {
                for (int j = 0; j < matriz[i].length; j++) {
                    System.out.print(matriz[i][j] + " ");
                }
            } else {
                for (int j = matriz[i].length - 1; j >= 0; j--) {
                    System.out.print(matriz[i][j] + " ");
                }
            }
            System.out.println();
        }
    }
}