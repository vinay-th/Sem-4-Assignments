// Write a Java Program that calculate area of triangle using Constructor.
//  Also find area of rectangle using Constructor Overloading.
public class Q9TriangleRect {
    // Here if we don't write static it is okay because now we can access
    // this variable as an instance variable by an object of this class
    double area;

    // the 2 float args will calculate for rectangle question ki mkc
    Q9TriangleRect(float height, float width) {
        // for a normal public(by default) access specifier it's not compulsory
        // to use this. keyword but if it was private it would be compulsory
        this.area = height * width;
    }

    // the 2 double args will calculate for triangle
    Q9TriangleRect(double base, double height) {
        // area of tri = ½ * bh;
        this.area = (base * height) / 2;
    }

    public static void main(String[] args) {
        // don't forget to add f at end before passing float
        Q9TriangleRect rect1 = new Q9TriangleRect(10f, 5.6f);
        Q9TriangleRect rect2 = new Q9TriangleRect(20.6f, 9.14f);

        Q9TriangleRect tri1 = new Q9TriangleRect(10.2, 6.8);
        Q9TriangleRect tri2 = new Q9TriangleRect(6.4, 5.1);

        System.out.println("Area of rect1 : " + rect1.area);
        System.out.println("Area of rect2 : " + rect2.area);
        System.out.println("Area of tri1 : " + tri1.area);
        System.out.println("Area of tri2 : " + tri2.area);

    }
}
