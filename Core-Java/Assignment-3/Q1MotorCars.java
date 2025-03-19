// 1. Define a class MotorVehicle to take modelName, modelNumeber, modelPrice,
// and a
// method display() to display these details. Create another class Car which
// inherits the
// class MotorVehicle and has the member discountRate and having display()
// method to
// display details. Test this class with suitable constructor. If necessary use
// the super
// keyword.

// create a simple class MotorVehicle
class MotorVehicle {
    String modelName;
    int modelNumber;
    float modelPrice;

    // Default constructor
    MotorVehicle(String modelName, int modelNumber, float modelPrice) {
        this.modelName = modelName;
        this.modelNumber = modelNumber;
        this.modelPrice = modelPrice;
    }

    // display all details
    void display() {
        System.out.println("The model name is: " + modelName);
        System.out.println("The model number is: " + modelNumber);
        System.out.println("The model price is: " + modelPrice);
    }
}

// We use Car extends MotorVehicle
class Car extends MotorVehicle {
    float discountRate;

    // default constructor for Car
    Car(String modelName, int modelNumber, float modelPrice, float discountRate) {
        // as MotorVehicle requires data we use super.(val...) for parent class
        // constructor i.e MotorVehicle
        super(modelName, modelNumber, modelPrice);
        this.discountRate = discountRate;
    }

    // we use Override as display method exists in Parent class
    @Override
    void display() {
        super.display();
        System.out.println("The discount rate is: " + discountRate + "%");
    }
}

class Q1MotorCars {
    public static void main(String[] args) {
        Car car = new Car("XYZ", 102, 5000000, 25.6f);

        car.display();
    }
}