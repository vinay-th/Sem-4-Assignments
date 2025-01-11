// Write a Java Program that take user Year as input from user making use of
// JoptionPane class and check whether its leap year or not.

// to use the GUI based user Input we need to use swing of javax
import javax.swing.JOptionPane;

public class Q6LeapYear {
    public static void main(String[] args) {
        System.out.println("Enter your year: ");

        // here to take the value from user using JOptionPane
        // you have to remember the order of the args
        // the trick is to write the args on separate lines
        String year = JOptionPane.showInputDialog(
                null,
                "Enter your year: ",
                "Leap year checker",
                JOptionPane.INFORMATION_MESSAGE);

        // 1st arg will always be on which screen to display the gui this is compulsory
        // 2nd arg will be the message to display on gui window this is compulsory
        // 3d arg is the title of the dialog box this is optional
        // 4th arg is the icon of the window this is optional

        if (Integer.parseInt(year) % 4 == 0) {
            System.out.println("Year " + year + " is leap year.");
        } else {
            System.out.println("Year " + year + " is not leap year.");
        }
    }
}
