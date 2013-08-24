class game : GLib.Object
{
	void init()
	{
		global.player = new Player();
		global.player.x = global.maxx/2;
		global.player.y = global.maxy/2;
		global.player.alive = true;
	}

	void gameloop()
	{
		while(globals.player.alive)
		{
			/*draw player*/
			/*draw some environment*/
			/*check for collisions*/
		}
	
	}
}
