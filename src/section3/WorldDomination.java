package section3;

import javax.swing.JOptionPane;

public class WorldDomination {
	
	public static void main(String[] args) {
		// 1. Ask the user if they know how to write code.
		String uknowcode = JOptionPane.showInputDialog("Do u know code?");
		System.out.println(uknowcode);
		// 2. If they say "yes", tell them they will rule the world.
		if (uknowcode.equals("yes") ) {
			System.out.println("sup");
		}
		else if (uknowcode.equals("no")) {
			System.out.println("Good luck washing dishes! :) ¯\\_(ツ)_/¯");
		
		}
		// 3. Otherwise, wish them good luck washing dishes.

	}

}

