// 25. Write a program that converts a String to different primitive types (int, double, boolean) using the parseXXX() methods from the respective wrapper classes
public class Q25Parsing {
    public static void main(String[] args) {
        // String values
        String intString = "100";
        String doubleString = "99.99";
        String booleanString = "true";

        // Convert to primitive types using parseXXX() methods
        int intValue = Integer.parseInt(intString);
        double doubleValue = Double.parseDouble(doubleString);
        boolean booleanValue = Boolean.parseBoolean(booleanString);

        // Print the converted values
        System.out.println("Converted int value: " + intValue);
        System.out.println("Converted double value: " + doubleValue);
        System.out.println("Converted boolean value: " + booleanValue);
    }
}
