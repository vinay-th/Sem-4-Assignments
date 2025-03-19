// Understanding basic class inheritance in java
// first we have an animal class 
// and Dog class that extends to animal

class Animal {
    String name = "Animal";

    // sound func for animal
    public void sound() {
        System.out.println(name + " makes sound!");
    }
}

class Dog extends Animal {
    String name = "Dog";

    // whenever we need to override an existing method from parent in child
    // we use this annotation @Override
    @Override
    public void sound() {
        // now this super. keyword is used to call method from parent
        super.sound();
        System.out.println(name + " barks!");
    }

    public void displayNames() {
        System.out.println("This is name of parent class: " + super.name); // animal
        System.out.println("This is name of children class: " + this.name); // dog
    }
}

class SuperKeyword {
    public static void main(String[] args) {
        Dog dog = new Dog();

        dog.sound();
        dog.displayNames();
    }
}