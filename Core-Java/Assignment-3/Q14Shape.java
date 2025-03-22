// 14. Create a class named 'Shape' with a method to print "This is This is shape". Then create
// two other classes named 'Rectangle', 'Circle' inheriting the Shape class, both having a
// method to print "This is rectangular shape" and "This is circular shape" respectively.
// Create a subclass 'Square' of 'Rectangle' having a method to print "Square is a rectangle".
// Now call the method of 'Shape' and 'Rectangle' class by the object of 'Square' class.

class Shape {
    void displayShape() {
        System.out.println("This is shape");
    }
}

class Rectangle extends Shape {
    void displayRect() {
        System.out.println("This is a rectangular shape");
    }
}

class Circle extends Shape {
    void displayCirc() {
        System.out.println("This is a circular shape");
    }
}

class Square extends Rectangle {
    void displaySqr() {
        System.out.println("Square is a rectangle");
    }
}

public class Q14Shape {
    public static void main(String[] args) {
        Square sqr = new Square();

        sqr.displayShape();
        sqr.displayRect();
        sqr.displaySqr();
    }
}
