// Write a Java Program to display all prime odd numbers from 50 to 100.
public class Q17OddLoop {
    public static void main(String[] args) {
        for (int i = 50; i <= 100; i++) {
            if (i % 2 != 0)
                System.out.println(i);
        }
    }
}
