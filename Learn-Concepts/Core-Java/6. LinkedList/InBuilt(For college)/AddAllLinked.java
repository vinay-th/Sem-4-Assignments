import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;

public class AddAllLinked {
    public static void main(String[] args) {
        LinkedList<String> list = new LinkedList<>();

        list.add("Hello");
        list.add("Guys");

        Collection<String> collect = new ArrayList<>();

        collect.add("I");
        collect.add("Am");
        collect.add("Vinay");

        list.addAll(1, collect);

        System.out.println(list);

    }
}
