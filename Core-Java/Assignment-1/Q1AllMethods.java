// Perform all the arithmetic operations using all four types of functions and
// display the same

// Output
// 20
// 20
// 20
// 20

public class Q1AllMethods {
    // use static to use a method without making it's obj
    // all following methods performs 10 + 10 = 20
    // using 3 diff type of methods

    // this is a No args No return Method
    static void NANR() {
        System.out.println(10 + 10);
    }

    // this is a No args With return Method
    static int NAWR() {
        int data = 10;

        return data + 10;
    }

    // this is a With args No return Method
    static void WANR(int data) {
        System.out.println(data + 10);
    }

    // this is a With args With return Method
    static int WAWR(int data) {
        return data + 10;
    }

    public static void main(String[] args) {

        // following methods will return nothing
        NANR();
        WANR(10);

        // following methods will return a value so we need to explicitly print them
        System.out.println(NAWR());
        System.out.println(WAWR(10));
    }
}
