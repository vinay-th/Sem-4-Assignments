// Write a Java program that will convert length in feet to centimeters using
// copy constructor. And print both the values. [before conversion and after
// conversion]

// see here wee need to create a copy constructor 
// what is copy constructor?? A constructor that creates a clone
// of an object by getting the obj passed to it as arg

// let's take this to another step and create a specific different class

public class Q10FeetCenti {
    public static void main(String[] args) {
        Length obj = new Length(25.63);

        System.out.println("The original object data: ");
        obj.display();

        Length obj2 = new Length(obj);
        System.out.println("\n\nThe duplicate object data(copy constructor): ");
        obj2.display();
    }
}

class Length {
    private double feet;
    private double centimeters;

    public double convertToCenti(double feet) {
        // this is a const dw it will be provided in exam
        return feet * 30.48;
    }

    public Length(double feet) {
        // see this might be confusing but it is very easy
        // here we will take a arg feet we have a private var
        // feet pvt var is always accessed by this. keyword
        // so this.feet is the private instance variable
        // and normal feet is passed arg
        this.feet = feet;
        this.centimeters = convertToCenti(feet);
    }

    // see here we take an object as an argument of Length class
    // this. variables are for the copied cons instance variable
    // the obj. variables are from the main original object variables
    public Length(Length obj) {
        this.feet = obj.feet;
        this.centimeters = obj.centimeters;
    }

    // just a simple method to display
    public void display() {
        System.out.println("Length in Feet: " + feet + " ft");
        System.out.println("Length in Centimeters: " + centimeters + " cm");
    }
}