// 7. Write a program in Java in which a subclass constructor invokes the constructor of the super class and instantiate the values.

// Superclass or parentClass
class Vehicle {
    String brand;
    int speed;

    // Superclass constructor
    Vehicle(String brand, int speed) {
        this.brand = brand;
        this.speed = speed;
    }

    void display() {
        System.out.println("Brand: " + brand + ", Speed: " + speed + " km/h");
    }
}

// Subclass
class Car extends Vehicle {
    int gears;

    // Subclass constructor
    Car(String brand, int speed, int gears) {
        super(brand, speed); // Calling superclass constructor
        this.gears = gears;
    }

    void showDetails() {
        display();
        System.out.println("Gears: " + gears);
    }
}

public class Q7ClassSubclass {
    public static void main(String[] args) {
        Car car = new Car("Cadillac", 220, 6);
        car.showDetails();
    }
}