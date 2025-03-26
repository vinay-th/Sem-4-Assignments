import java.applet.Applet;
import java.awt.*;

public class Q13AjeebShapes extends Applet {
    public void paint(Graphics g) {
        g.setColor(Color.BLACK);

        g.drawRect(10, 25, 150, 25);
        g.drawRect(10, 65, 150, 25);
        g.drawOval(10, 100, 150, 40);

        g.fillRect(210, 25, 150, 25);
        g.fillRect(210, 65, 150, 25);

        g.setColor(Color.RED);
        g.fillOval(210, 100, 150, 40);
    }
}
