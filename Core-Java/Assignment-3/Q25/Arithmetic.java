// 25. Write a java program which shows importing of classes from other packages.
// run:
// javac -d . Arithmetic.java 
// javac -d . -cp . AdvcCalc.java 
// java advanceMath.AdvcCalc 

package mathOperations;

public class Arithmetic {
    // Method for addition
    public int add(int a, int b) {
        return a + b;
    }

    // Method for subtraction
    public int subtract(int a, int b) {
        return a - b;
    }
}
