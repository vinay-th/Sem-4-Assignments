// Create a Priority queue with 10 elements and print the minimum value out of it.

import java.util.PriorityQueue;

public class Q14MinInPQ {
    public static void main(String[] args) {
        // same initialization like the LinkedList or Stack
        PriorityQueue<Integer> queue = new PriorityQueue<>();

        // queue is like a line and Priority Queue depicts to priority
        // here the queue will be perform FIFO algo but,
        // the elements in the priority queue are arranged in ascending order
        // so the head of the queue will be smallest num
        queue.add(56);
        queue.add(89);
        queue.add(47);
        queue.add(93);
        queue.add(74);
        queue.add(61);
        queue.add(82);
        queue.add(95);
        queue.add(38);
        queue.add(77);

        int min = queue.peek();

        // this toString will be in ascending order as PQ is arranged in ascending
        System.out.println("The items in priority queue are: " + queue.toString());
        System.out.println("The smallest element in queue is: " + min);
    }
}
