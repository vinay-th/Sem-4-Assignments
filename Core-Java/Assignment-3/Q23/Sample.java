package mypack;

import MyPackage.Student;

public class Sample {
    public static void main(String[] args) {
        Student stu = new Student();

        stu.setRoll(101);
        stu.setFirstName("Vansh");
        stu.setMiddleName("Deepakbhai");
        stu.setLastName("Vora");
        stu.setAddress("Shahibaugh / sarthak heart");
        stu.setAge(19);

        stu.displayStudentInfo();
    }
}
