import java.util.LinkedList;

public class ListMethods {
    public static void main(String args[]) {
        LinkedList<String> list = new LinkedList<>();

        list.add("C++");
        list.add("Java");
        list.add("Javascript");
        list.add("GO");
        list.add("Python");

        // Accessing the list
        System.out.println("The list currently is: " + list);

        // The size of the list
        System.err.println("The length of the list is:" + list.size());

        // For each method to access every element
        list.forEach(e -> {
            System.out.println("I know: " + e);
        });

        // removes first node
        // list.pop();
        list.removeFirst();
        System.out.println("The list after removing first node is: " + list);

        // add at first node
        // list.push("Dart");
        list.addFirst("Dart");
        System.out.println("The list after adding first node is: " + list);

        // add at last node
        list.add("Typescript");
        System.out.println("The list after adding last node is: " + list);

        // to remove the last node
        list.removeLast();
        System.out.println("The list after removing last node is: " + list);

        // Clearing the list
        list.clear();
    }
}
