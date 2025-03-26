import java.applet.Applet;
import java.awt.*;

public class Q12Shapes extends Applet {
    @Override
    public void paint(Graphics g) {
        g.setColor(Color.GRAY);

        int xTriPoints[] = { 150, 100, 200 };
        int yTriPoints[] = { 100, 200, 200 };
        int nTriPoints = 3;

        g.fillPolygon(xTriPoints, yTriPoints, nTriPoints);
        g.fillRect(250, 100, 100, 100);

        g.setColor(Color.BLACK);
        g.setFont(new Font("Ariel", 1, 20));

        g.drawString("Triangle", 100, 230);
        g.drawString("Rectangle", 250, 230);
    }
}
