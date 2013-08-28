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
			/*draw some environment*/
			/*check for collisions*/
		}
	
	}
}
