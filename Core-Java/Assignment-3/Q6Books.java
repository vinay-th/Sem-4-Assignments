// 6. Create a class name Book that contains data fields for the title and number of pages.
// Include get and set methods for these fields. Next, create a subclass named Textbook,
// which contains an additional field that holds a grade level for the Textbook and
// additional methods to get and set grade level field. Write an application that demonstrates using objects of each class.

class Book {
    String title;
    int pages;

    public void set(String title, int pages) {
        this.title = title;
        this.pages = pages;
    }

    public int getPages() {
        return pages;
    }

    public String getTitle() {
        return title;
    }
}

class Textbook extends Book {
    int gradeLevel;

    public void setGradeLevel(int gradeLevel) {
        this.gradeLevel = gradeLevel;
    }

    Textbook(String title, int pages, int gradeLevel) {
        super.set(title, pages);
        setGradeLevel(gradeLevel);
    }

    public int getGradeLevel() {
        return gradeLevel;
    }
}

public class Q6Books {
    public static void main(String[] args) {
        Textbook tb = new Textbook("Math", 500, 11);

        System.out.println("Grade level: " + tb.getGradeLevel() + "\nTotal Pages: " + tb.getPages() + "\nBook title: "
                + tb.getTitle());
    }
}
