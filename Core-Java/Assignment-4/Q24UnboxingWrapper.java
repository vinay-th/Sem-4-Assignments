// 24. Write a program that demonstrates unboxing. Initialize a wrapper object for a primitive value (e.g., Integer holding an int), then retrieve and print the primitive value from the wrapper object.

public class Q24UnboxingWrapper {
    public static void main(String[] args) {
        // Demonstrate unboxing
        Integer wrapperNum = 20; // Wrapper object holding an int

        // Unboxing: Integer to int
        int primitiveNum = wrapperNum;

        // Print the primitive value
        System.out.println("Wrapper object value: " + wrapperNum);
        System.out.println("Unboxed primitive value: " + primitiveNum);
    }
}
