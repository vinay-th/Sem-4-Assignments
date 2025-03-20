// 12. Create a class result which implements sports interface having data member total (stores total of three subject marks) and percentage (total + sportmarks). Calculate the percentage and grade and display the same.

interface Sports {
    int getSportsMarks();
}

class Result implements Sports {
    int total;
    float percentage;

    Result(int subject1, int subject2, int subject3) {
        this.total = subject1 + subject2 + subject3;
        this.percentage = calculatePercentage();
    }

    @Override
    public int getSportsMarks() {
        return 10;
    }

    float calculatePercentage() {
        return (total + getSportsMarks()) / 4.0f;
    }

    char getGrade() {
        if (percentage >= 90)
            return 'A';
        else if (percentage >= 75)
            return 'B';
        else if (percentage >= 50)
            return 'C';
        else
            return 'D';
    }

    public void displayResult() {
        System.out.println("Total Marks (including sports): " + (total + getSportsMarks()));
        System.out.println("Percentage: " + percentage + "%");
        System.out.println("Grade: " + getGrade());
    }
}

public class Q12Sports {
    public static void main(String[] args) {
        Result student = new Result(85, 78, 92);
        student.displayResult();
    }
}
