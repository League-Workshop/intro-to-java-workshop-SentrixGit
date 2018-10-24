package section2;

import java.awt.Color;
import org.jointheleague.graphical.robot.Robot;

public class MyFirstJavaProgram {
	
	public static void main(String[] args) {
		Robot bob = new Robot();
		Robot joe = new Robot();
		bob.setSpeed(1000);
		joe.setSpeed(100);
		
		// Set some settings
		bob.penDown();
		joe.penDown();
		bob.hide();
		joe.hide();
		bob.sparkle();
		joe.sparkle();
		
		// Control the "robots" on the screen and draw a 3D cube
		
		// We can allow bob to create the first three lines of square
		for (int i = 0; i < 100; i++) {
			bob.move(5);
			bob.turn(10);
		}
		
		bob.unSparkle();
		joe.unSparkle();
	}
}
