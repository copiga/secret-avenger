class game : GLib.Object
{
	void init()
	{
		globals.player = new Player();
		player.x = global.maxx/2;
		player.y = global.maxy/2;
	}

	gameloop
