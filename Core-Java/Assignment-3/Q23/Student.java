// 23. Create a package named MyPackage which consists a class named Student which stores
// information like the roll number, first name, middle name, last name, address and age of
// the student. The class should also contain appropriate get and set methods.Create a
// package named mypack that import MyPackage.Create a class Sample in mypack.Create
// Student class object in Sample class.

// To run:
// javac -d . Student.java
// javac -d . -cp . Sample.java
// java mypack.Sample 

package MyPackage;

public class Student {
    private int roll;
    private String firstName;
    private String middleName;
    private String lastName;
    private String address;
    private int age;

    public String getAddress() {
        return address;
    }

    public int getRoll() {
        return roll;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public int getAge() {
        return age;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public void setRoll(int roll) {
        this.roll = roll;
    }

    public void displayStudentInfo() {
        System.out.println("Student Information:");
        System.out.println("Roll Number: " + roll);
        System.out.println("Name: " + firstName + " " + middleName + " " + lastName);
        System.out.println("Address: " + address);
        System.out.println("Age: " + age);
    }
}
