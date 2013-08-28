using Curses;

int main()
{
	initscr();
	raw();
	noecho();
	keypad(stdscr, true);
	halfdelay(1);
	getmaxyx(global.maxy, global.maxx);
	game.init();
	game.gameloop();
	endwin();
	return 0;
}
