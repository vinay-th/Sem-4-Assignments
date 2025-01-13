// Write a Java program to display all even numbers from 1 to 100 using forloop
public class Q16EvenLoop {
    public static void main(String[] args) {
        for (int i = 2; i <= 100; i++) {
            if (i % 2 == 0)
                System.out.println(i);
        }
    }
}
