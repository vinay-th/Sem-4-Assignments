// Consider an employee class, which contains fields such as name and designation. And a
// subclass, which contains a field salary. Write a program for inheriting this relation.

class Employee {
    String name, designation;

    Employee(String name, String designation) {
        this.name = name;
        this.designation = designation;
    }
}

// subclass
class HR extends Employee {
    float salary;

    // subclass constructor with super constructor
    HR(String name, String designation, float salary) {
        super(name, designation);
        this.salary = salary;
    }

    void display() {
        System.out.println("The name of employee is: " + super.name); // parent data
        System.out.println("The designation of employee is: " + super.designation);
        System.out.println("The salary of employee is: " + salary);
    }

}

public class Q2Employee {
    public static void main(String[] args) {
        HR hr = new HR("XYZ", "ABC", 50000f);

        hr.display();
    }
}
