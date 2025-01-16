// Write a Java Program to create add function to sum all the elements.
// Note: use Variable length argument concept

// input : 10, 20, 30, 40 ... n
// output : (sum of all num)

public class Q10Sum {
    // just use ... to get a variable(dynamic) length arg
    public static int add(int... numbers) {
        int sum = 0;
        // using for each to get variable length arg
        for (int num : numbers) {
            sum += num;
        }

        return sum;
    }

    public static void main(String[] args) {

        System.out.println("Sum of 5, 10, 15: " + add(5, 10, 15)); // 30
        System.out.println("Sum of 1, 2, 3, 4, 5: " + add(1, 2, 3, 4, 5)); // 15
        System.out.println("Sum of 100, 200, 300: " + add(100, 200, 300)); // 600
        System.out.println("Sum of no elements: " + add()); // 0 (empty input)
    }
}
