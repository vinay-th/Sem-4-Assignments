public class ProofThatArrayIsObj {
    public static void changeVal(int[] arr) {
        arr[2] = 50;
    }

    public static void main(String[] args) {
        int[] arr = { 1, 2, 3, 4, 5 };

        changeVal(arr);

        for (int i : arr) {
            System.out.println(i);
        }
    }
}
