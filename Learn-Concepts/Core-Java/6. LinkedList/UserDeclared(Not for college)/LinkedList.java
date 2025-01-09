import java.util.Scanner;

public class LinkedList {
    public static class Node {
        public int data;
        public Node next;

        public Node(int data) {
            this.data = data;
            this.next = null;
        }
    }

    public static Scanner sc = new Scanner(System.in);
    public static Node start = null;
    public static Node rear = null;
    public static int size = 0;

    public static void createLinkedList() {
        int val;

        if (start == null) {
            System.out.print("Enter the start data: ");
            val = sc.nextInt();
            Node newNode = new Node(val);
            newNode.next = null;

            start = rear = newNode;
        }

        Node ptr = start;

        while (true) {
            System.out.print("Enter a the data(to exit enter -1): ");
            val = sc.nextInt();

            if (val == -1) {
                rear = ptr;
                break;
            }

            Node newNode = new Node(val);
            newNode.next = null;

            ptr.next = newNode;
            ptr = ptr.next;
        }
    }

    public static void printList() {
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

    public static void addAtLast(int data) {
        Node newNode = new Node(data);

        newNode.next = null;

        rear.next = newNode;
        rear = newNode;
    }

    public static void addInBtw(int pos, int data) {
        Node ptr = start;
        Node newNode = new Node(data);

        for (int i = 0; i < pos - 1; i++) {
            ptr = ptr.next;
        }

        newNode.next = ptr.next;
        ptr.next = newNode;
    }

    public static void deleteFirst() {
        start = start.next;
    }

    public static void deleteLast() {
        Node ptr = start;
        Node prePtr = ptr;

        while (ptr != rear) {
            prePtr = ptr;
            ptr = ptr.next;
        }

        prePtr.next = null;
    }

    public static int getSize() {
        Node ptr = start;

        while (ptr != null) {
            size++;
            ptr = ptr.next;
        }

        return size;
    }

    public static void main(String[] args) {
        // addToStart(10);
        // addToStart(11);
        // addToStart(12);
        // addToStart(13);
        // addToStart(14);

        createLinkedList();
        // addAtLast(10);

        // addInBtw(2, 10);

        // deleteFirst();

        deleteLast();

        // System.out.println(getSize());

        printList();
    }
}