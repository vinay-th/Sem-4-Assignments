import myPack.External;

public class Main {
    static int demo = 50;

    public static void main(String[] args) {
        External obj = new External();
        System.out.println("Same class num: " + demo);
        System.out.println("External class num: " + obj.member);
    }
}
