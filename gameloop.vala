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
				case 0402://KEY_DOWN as defined in usr/include/ncurses.h:1412
				     player.down();
				     break;
				case 0403://KEY_UP as defined in /usr/include/ncurses.h:1413
				     player.up();
				     break;
				
			}
			/*draw some environment*/
			/*check for collisions*/
		}
	
	}
}
