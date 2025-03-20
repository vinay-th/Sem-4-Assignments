// 10. Write a Java Program to create a simple class to find out the Area and perimeter of rectangle and box using super and this keyword.

class Rectangle {
    double length, breadth;

    Rectangle(double length, double breadth) {
        this.length = length;
        this.breadth = breadth;
    }

    double findPerimeter() {
        return (length + breadth) * 2;
    }

    double findArea() {
        return length * breadth;
    }
}

class Box extends Rectangle {
    Box(double length, double breadth) {
        super(length, breadth);
    }

    double perimeter = super.findPerimeter();
    double area = super.findArea();

    void display() {
        System.out.println("The perimeter of box is: " + perimeter);
        System.out.println("The area of box is: " + area);
    }
}

public class Q10Rectangle {
    public static void main(String[] args) {
        Box obj = new Box(10, 20);

        obj.display();
    }
}
