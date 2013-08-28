using Curses;

class game : GLib.Object
{
	private static int input;
	public static Player player;

	public static void init()
	{
		player = new Player();
	}

	public static void gameloop()
	{
		for(input = getch() ; player.alive && input != 'q' ; input = getch())
		{
			switch(input)
			{
				case 66://KEY_DOWN as observed by printing the value of input
				case 's':
				     player.down();
				     break;
				case 65://KEY_UP as observed by printing the value of input
				case 'w':
				     player.up();
				     break;
				case 68:
				case 'a':
				     player.left();
				     break;
				case 67:
				case 'd':
				     player.right();
				     break;
			}
			/*draw some environment*/
			/*check for collisions*/
		}
	
	}
}
