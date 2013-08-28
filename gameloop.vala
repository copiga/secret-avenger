using Curses;

class game : GLib.Object
{
	private static char input;
	public Player player;

	public static void init()
	{
		player = new Player();
	}

	public static void gameloop()
	{
		while(player.alive && input != 'q')
		{
			/*draw some environment*/
			/*check for collisions*/
		}
	
	}
}
