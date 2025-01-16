//Create a stack with 5 elements and find the minimum value out of it

import java.util.Stack;

public class Q13MinInStack {
    public static void main(String[] args) {
        // this is same as initializing a LinkedList
        Stack<Integer> stack = new Stack<>();

        // imagine stack as a pile of dish so
        // in stack we don't add we push
        // we push a dish on top of current stack
        // so top of the stack will be last added item
        stack.push(40);
        stack.push(30);
        stack.push(10);
        stack.push(50);
        stack.push(20);

        // this toString will start from bottom of the stack to top in FIFO manner
        System.out.println("The items in stack are: " + stack.toString());

        // peek returns the top of the stack or in simple words
        // first element of stack i.e 20
        int min = stack.peek();

        // simple foreach loop, item is int as stack is of int elements
        for (int item : stack) {
            if (min > item)
                min = item;
        }

        System.out.println("Smallest number in stack is: " + min);
    }
}
