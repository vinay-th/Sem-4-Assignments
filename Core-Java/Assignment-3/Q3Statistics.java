
// Write a program to calculate arithmetic mean in the superclass and standard deviation in
// the subclass.
import java.util.Arrays;

class Mean {
    double[] numbers;

    Mean(double[] numbers) {
        this.numbers = numbers;
    }

    double calculateMean() {
        double sum = 0;

        for (double num : numbers) // for each loop
            sum += num;

        return sum / numbers.length; // return mean
    }
}

class StdDeviation extends Mean {

    StdDeviation(double[] numbers) {
        super(numbers); // super parent constructor call
    }

    // the formula for standard deviation is
    // ∑(num - mean)² / total number of data
    // easy hai bas formula yaad krna hai kyuki maybe Data Sci mai hai
    double calculateStdDev() {
        double mean = super.calculateMean();
        double sumSquaredDifferences = 0;

        for (double num : numbers)
            sumSquaredDifferences += Math.pow(num - mean, 2);

        return Math.sqrt(sumSquaredDifferences / numbers.length);
    }
}

public class Q3Statistics {
    public static void main(String[] args) {
        double[] data = { 10, 20, 30, 40, 50 };

        StdDeviation stats = new StdDeviation(data); // make an obj

        System.out.println("The data is: " + Arrays.toString(data)); // to print
        System.out.println("The mean is: " + stats.calculateMean());
        System.out.println("The standard deviation is: " + stats.calculateStdDev());

    }
}
