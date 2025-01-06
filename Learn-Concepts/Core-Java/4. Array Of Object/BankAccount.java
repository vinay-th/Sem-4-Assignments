import java.util.Arrays;

public class BankAccount {
    private int accNo;
    private String name;
    private int[] transactions;
    private int index;

    BankAccount(int accNo, String name) {
        this.accNo = accNo;
        this.name = name;
        transactions = new int[5];
        index = 0;
    }

    public void addTransaction(int transaction) {
        transactions[index] = transaction;

        index = (index + 1) % transactions.length; // circular indexing to track the position in transactions array
    }

    public void displayAccountDetails() {
        System.out.println("Your account number is: " + accNo);
        System.out.println("Your name is: " + name);
        System.out.println("Your account balance is: " + checkBalance());
        System.out.println("Your recent transactions are: " + Arrays.toString(transactions));
    }

    public int checkBalance() {
        int balance = 0;

        for (int transaction : transactions) {
            balance += transaction;
        }

        return balance;
    }

    public static void main(String[] args) {
        BankAccount Acc1 = new BankAccount(101, "Vinay");

        Acc1.addTransaction(10000);
        Acc1.addTransaction(-500);
        Acc1.addTransaction(2000);
        Acc1.addTransaction(2000);
        Acc1.addTransaction(-500);

        Acc1.displayAccountDetails();
    }
}
