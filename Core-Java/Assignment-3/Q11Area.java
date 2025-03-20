// 11. Write a Java program to create an interface area having pie as its data members and a method compute(float, float)

interface Area {
    double PI = Math.PI;

    double compute(float x, float y);
}

// Circle class implementing Area interface
class Circle implements Area {
    @Override
    public double compute(float radius, float dummy) { // dummy is unused
        return PI * radius * radius;
    }
}

// Rectangle class implementing Area interface
class Rectangle implements Area {
    @Override
    public double compute(float length, float width) {
        return length * width;
    }
}

public class Q11Area {
    public static void main(String[] args) {
        // Creating Circle object
        Circle circle = new Circle();
        double circleArea = circle.compute(7, 0); // Second parameter is unused
        System.out.println("Area of Circle: " + circleArea);

        // Creating Rectangle object
        Rectangle rectangle = new Rectangle();
        double rectangleArea = rectangle.compute(10, 5);
        System.out.println("Area of Rectangle: " + rectangleArea);
    }
}
