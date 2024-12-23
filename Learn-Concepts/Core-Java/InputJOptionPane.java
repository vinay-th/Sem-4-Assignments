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

        // This is a normal message dialog box that displays the message
        JOptionPane.showMessageDialog(null, "Toh kaise hai aap log", "Hello", JOptionPane.PLAIN_MESSAGE);

        // this is a confirm dialog box
        int x = JOptionPane.showConfirmDialog(null, "Kya aap zinda hai??", "Life update bro! 🙂",    JOptionPane.ERROR_MESSAGE);

        // dekh bro yaha pr na
        // 1st Arg is null parent component (kaha pr khulega dialog)
        // 2nd Arg is our message
        // 3rd Arg is our title of dialog
        // 4th Arg is our No default options
        // 5th Arg is our Logo
        // 6th Arg is our null
        // 7th Arg is array of our options
        // 8th Arg is out initial value it goes like array index
        String[] options = { "naa", "mood nai hota", "subjects tak nai pata" };

        int y = JOptionPane.showOptionDialog(null, "Kya aap padhte hai??", "Life update bro! 🙂", JOptionPane.NO_OPTION,
                JOptionPane.INFORMATION_MESSAGE, null, options, null);

        if (y == 0) {
            System.out.println("Saras");
        } else if (y == 1) {
            System.out.println("Bhanvanu kar dofa");
        } else {
            System.out.println("Chulu bhar paani mai dubi mar");
        }
    }
}
