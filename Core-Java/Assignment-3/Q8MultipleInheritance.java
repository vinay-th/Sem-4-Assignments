// 8. Write a program in Java to demonstrate implementation of multiple inheritance using interfaces.

// First interface
interface Engine {
    void startEngine();
}

// Second interface
interface Transmission {
    void changeGear(int gear);
}

// Class implementing multiple interfaces
class Car implements Engine, Transmission {
    int gear;

    @Override
    public void startEngine() {
        System.out.println("Engine started.");
    }

    @Override
    public void changeGear(int gear) {
        this.gear = gear;
        System.out.println("Gear changed to: " + this.gear);
    }
}

public class Q8MultipleInheritance {
    public static void main(String[] args) {
        Car myCar = new Car();
        myCar.startEngine();
        myCar.changeGear(3);
    }
}
