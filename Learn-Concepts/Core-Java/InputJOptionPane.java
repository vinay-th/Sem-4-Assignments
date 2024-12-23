import javax.swing.JOptionPane;

public class InputJOptionPane {
    public static void main(String[] args) {
        // Bro dekh JOptionPane jabhi use krenge we get the input as a String
        // So we will always take the input in a String var
        String num;

        num = JOptionPane.showInputDialog(null, "Enter a number: ");
        // The number(jo abhi string hai) now should be converted into an integer
        // So to do that we will use java inBuild lib Integer that has a method to typecast
        int res = Integer.parseInt(num);

        System.out.println("The number you entered is : " + res);

    }
}
