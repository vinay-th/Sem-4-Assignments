// 13. Create a class named 'Rectangle' with two data members 'length' and 'breadth' and two
// methods to print the area and perimeter of the rectangle respectively. Its constructor
// having parameters for length and breadth is used to initialize length and breadth of the
// rectangle. Let class 'Square' inherit the 'Rectangle' class with its constructor having a
// parameter for its side (suppose s) calling the constructor of its parent class as 'super(s,s)'.
// Print the area and perimeter of a rectangle and a square.

class Rectangle {
    double length, breadth;

    Rectangle(double length, double breadth) {
        this.length = length;
        this.breadth = breadth;
    }

    void display() {
        System.out.println("The perimeter of rectangle is: " + ((length + breadth) * 2));
        System.out.println("The area of rectangle is: " + (length * breadth));
    }
}

class Square extends Rectangle {
    Square(double side) {
        super(side, side);
    }

    @Override
    void display() {
        System.out.println("The perimeter of square is: " + (length * 4));
        System.out.println("The area of square is: " + (length * length));
    }
}

public class Q13RectSqr {
    public static void main(String[] args) {
        Rectangle rect = new Rectangle(10, 20);
        Square cir = new Square(50);

        rect.display();
        cir.display();
    }
}
