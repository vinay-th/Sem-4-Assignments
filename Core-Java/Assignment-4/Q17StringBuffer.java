// 17. Write a java program using StringBuffer Class and its methods. 

public class Q17StringBuffer {
    public static void main(String[] args) {
        StringBuffer sb = new StringBuffer("Hello");

        sb.append(" World"); // Hello World

        System.out.println("After append: " + sb);

        sb.insert(6, "to "); // Hello to World
        System.out.println("After inserting to: " + sb);

        sb.replace(6, 15, "Java");
        System.out.println("After replacing: " + sb);

        sb.reverse();
        System.out.println("After reversing: " + sb);

        System.out.println("The length of string: " + sb.length());
        System.out.println("The capacity of string: " + sb.capacity());

        sb.ensureCapacity(50);
        System.out.println("After ensuring capacity to 50: " + sb.capacity());

    }
}
