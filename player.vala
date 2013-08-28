using Curses;

class Player : GLib.Object
{
	public int x;
	public int y;
	public bool alive;
	private char sprite;	

	public static Player()
	{
		this.sprite = '>';
		this.y = global.maxy/2;
		this.x = global.maxx/2;
		this.alive = true;
		this.draw();
	}

	private void draw()
	{
		mvprintw(this.y, this.x, "%c", this.sprite);
	}

	private void undraw()
	{
		mvprintw(this.y, this.x, " ");
	}

	public void up()
	{
		if(this.y > 0)
		{
			this.undraw();
			this.y--;
			this.sprite = '^';
			this.draw();
		}
	}

	public void down()
	{
		if(this.y < global.maxy -1)
		{
			this.undraw();
			this.y++;
			this.sprite = 'V';
			this.draw();
		}
	}

	public void left()
	{
		if(this.x > 0)
		{
			this.undraw();
			this.x--;
			this.sprite = '<';
			this.draw();
		}
	}

	public void right()
	{
		if(this.x < global.maxx -1)
		{
			this.undraw();
			this.x++;
			this.sprite = '>';
			this.draw();
		}
	}
}
