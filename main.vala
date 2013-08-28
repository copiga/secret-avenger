using Curses;

int main()
{
	initscr();
	raw();
	noecho();
	//	keypad(stdscr, true); /*THIS IS NOT C LEARN THE REST OF NCURSES*/
	halfdelay(1);
	//	getmaxyx(global.maxy, global.maxx); /*FOLLOW THE PREVIOUS*/
	game.init();
	game.gameloop();
	endwin();
	return 0;
}
