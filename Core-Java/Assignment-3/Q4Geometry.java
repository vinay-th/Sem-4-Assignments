// 4. Write a program to calculate the area of circle, Rectangle & Square by using interface.

interface Shapes {
    double calculateArea();
}

class Circle implements Shapes {
    double radius;

    Circle(double radius) {
        this.radius = radius;
    }

    @Override
    public double calculateArea() {
        return Math.PI * radius * radius;
    }
}

class Square implements Shapes {
    double side;

    Square(double side) {
        this.side = side;
    }

    @Override
    public double calculateArea() {
        return side * side;
    }
}

class Rectangle implements Shapes {
    double length, breadth;

    Rectangle(double length, double breadth) {
        this.length = length;
        this.breadth = breadth;
    }

    @Override
    public double calculateArea() {
        return length * breadth;
    }
}

public class Q4Geometry {
    public static void main(String[] args) {
        Circle cir = new Circle(10);
        Square squ = new Square(10);
        Rectangle rect = new Rectangle(10, 20);

        System.out.println("The area of circle is: " + cir.calculateArea());
        System.out.println("The area of square is: " + squ.calculateArea());
        System.out.println("The area of rectangle is: " + rect.calculateArea());
    }
}