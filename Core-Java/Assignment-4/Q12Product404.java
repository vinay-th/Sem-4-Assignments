// 12. Create a custom exception ProductNotFoundException that accepts a product ID in its
// constructor. Write a program to simulate searching for a product in an inventory system
// and throw this exception if the product is not found.

import java.util.Scanner;

class ProductNotFoundException extends Exception {
    ProductNotFoundException(int id) {
        super("Product id: " + id + " not found in inventory");
    }
}

public class Q12Product404 {
    static int[] inventory = { 1, 2, 0, 3, 4, 5, 8, 0, 0, 1, 0, 2 };

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        try {

            System.out.print("Enter the prod_id: ");
            int num = sc.nextInt();

            if (inventory[num] == 0)
                throw new ProductNotFoundException(num);

            System.out.println("The product quantity in inventory is: " + inventory[num]);
        } catch (ProductNotFoundException e) {
            System.out.println(e);
        } finally {
            sc.close();
        }
    }
}
