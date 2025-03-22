// 20. Consider string s=”FCAIT GLS University”, modify the string s as
// ● Convert the string into uppercase and lowercase
// ● Find out the character at position 5.
// ● Find out the sub string as GLS University
public class Q20GLSStr {
    public static void main(String[] args) {
        String s = "FCAIT GLS University";

        System.out.println("UpperCased string: " + s.toUpperCase());
        System.out.println("LowerCased string: " + s.toLowerCase());

        System.out.println("The character at 5th pos is: " + s.charAt(5));
        System.out.println("SubString: " + s.substring(6));
    }
}
