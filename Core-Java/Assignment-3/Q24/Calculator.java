// 24. Create a package named Calc which contains a class Calculator. Class Calculator have 2
// methods sum() and subtraction() which perform the operation on two numbers.
// Create a package named SciCalc that import package Calculator. SciCalc contains a class
// SciCalculator. Class SciCalculator have 1 methods squareroot().Create Calculator class
// object in SciCalculator class and call all the methods of Calculator class.

// to run:
// javac -d . Calculator.java
// javac -d . -cp . SciCalculator.java
// java SciCal.SciCalculator 

package Calc;

public class Calculator {
    public int sum(int a, int b) {
        return a + b;
    }

    public int subtract(int a, int b) {
        return a - b;
    }
}
