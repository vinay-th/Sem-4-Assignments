public class MatrixOpr {
    public int[][] mat;

    MatrixOpr(int[][] arr) {
        mat = arr;
    }

    public void print(int[][] arr) {
        for (int[] row : arr) {
            for (int e : row) {
                System.out.print(e + " ");
            }
            System.out.println();
        }
    }

    public static int[][] transpose(int[][] arr) {
        int[][] transposed = new int[3][3];

        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                transposed[i][j] = arr[j][i];
            }
        }

        return transposed;
    }

    public static void main(String[] args) {
        MatrixOpr obj = new MatrixOpr(new int[][] { { 1, 2, 3 }, { 4, 5, 6 }, { 7, 8, 9 } });

        obj.print(obj.mat);

        System.out.println();

        obj.print(transpose(obj.mat));
    }
}
