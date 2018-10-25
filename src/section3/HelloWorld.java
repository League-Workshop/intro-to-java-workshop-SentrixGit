package section3;

import javax.swing.JOptionPane;

public class HelloWorld {
	
	public static void main(String[] args) {
		System.out.println("Please insert you name! \nSending this string to the user!");
		JOptionPane.showMessageDialog(null, "Hello World!");
		String test = JOptionPane.showInputDialog("Please insert you name!");
		System.out.println("Your name is: " + test);
	}

}
