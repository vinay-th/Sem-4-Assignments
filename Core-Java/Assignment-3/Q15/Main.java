// to run this prog
// javac -d . geometry\Rectangle.java geometry\Circle.java
// javac .\Main.java
// java Main

import Q15.geometry.Rectangle;

import java.util.Scanner;

import Q15.geometry.Circle;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Rectangle rect = new Rectangle();
        Circle cir = new Circle();

        System.out.print("Enter length of the rectangle: ");
        double length = sc.nextDouble();
        System.out.print("Enter breadth of the rectangle: ");
        double breadth = sc.nextDouble();
        System.out.println("Area of Rectangle: " + rect.calculateArea(length, breadth));

        System.out.print("Enter radius of the circle: ");
        double radius = sc.nextDouble();
        System.out.println("Area of Circle: " + cir.calculateArea(radius));

        sc.close();
    }
}
