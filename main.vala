using Curses;

int main(string[] args)
{
	if(args.length <3)
	{
		usage(args);
		return 1;
	}
	global.maxy = int.parse(args[2]);/*this is not right, it works but it feels wrong...*/
	global.maxx = int.parse(args[3]);/*these should both be one less...*/
	initscr();
	raw();
	noecho();
	halfdelay(1);
	game.init();
	game.gameloop();
	endwin();
	return 0;
}

void usage(string[] args)
{
	stdout.printf("to use this programme please use the following command:\n%s `termsize`\n", args[0]);
}
