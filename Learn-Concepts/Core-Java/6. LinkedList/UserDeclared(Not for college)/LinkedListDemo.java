import java.util.Scanner;

public class LinkedListDemo {
    static class Node {
        public int data;
        public Node next;

        public Node(int data) {
            this.data = data;
            this.next = null;
        }
    }

    public static Node start = null;
    public static Node rear = null;
    public static Scanner sc = new Scanner(System.in);

    public static void createLinkedList() {
        int val = 0;
        if (start == null) {
            System.out.print("Enter the start data: ");
            val = sc.nextInt();

            Node newNode = new Node(val);

            start = rear = newNode;
        }
        Node ptr = start;

        while (true) {
            System.out.print("Enter the data(To exit enter -1): ");
            val = sc.nextInt();

            if (val == -1) {
                rear = ptr;
                break;
            }

            Node newNode = new Node(val);

            ptr.next = newNode;
            ptr = ptr.next;
        }
    }

    public static void print() {
        Node ptr = start;
        while (ptr != null) {
            System.out.println(ptr.data);
            ptr = ptr.next;
        }
    }

    public static void addToStart(int data) {
        Node newNode = new Node(data);
        newNode.next = start;

        start = newNode;
    }

    public static void addToLast(int data) {
        Node newNode = new Node(data);

        rear.next = newNode;
        rear = newNode;
    }

    public static void addInMiddle(int pos, int data) {
        Node ptr = start;
        Node prePtr = ptr;
        Node newNode = new Node(data);

        for (int i = 0; i < pos; i++) {
            prePtr = ptr;
            ptr = ptr.next;
        }

        prePtr.next = newNode;
        newNode.next = ptr;
    }

    public static void deleteFirst() {
        start = start.next;
    }

    public static void deleteLast() {
        Node ptr = start;

        while (ptr.next != rear) {
            ptr = ptr.next;
        }

        ptr.next = null;
        rear = ptr;
    }

    public static void deleteInMiddle(int pos) {
        Node ptr = start;
        Node prePtr = ptr;

        for (int i = 0; i < pos; i++) {
            prePtr = ptr;
            ptr = ptr.next;
        }

        prePtr.next = ptr.next;
    }

    public static void main(String[] args) {
        createLinkedList();
        // addToStart(10);
        // addToLast(10);
        // addInMiddle(2, 10);
        // deleteFirst();
        // deleteLast();
        deleteInMiddle(2);
        print();
    }
}
