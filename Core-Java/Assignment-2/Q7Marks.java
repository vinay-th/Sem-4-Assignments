// Write a Java Program to create an array containing marks of all students in physics using a for-each loop
public class Q7Marks {
    public static void main(String[] args) {
        // static marks of student in physics
        int[] marks = { 87, 92, 78, 65, 89, 73, 94, 88, 81, 77 };

        // simple for each loop with element e for each element of marks arr

        System.out.println("Marks of student in physics: ");
        for (int e : marks) {
            System.out.print(e + " ");
        }
    }
}
