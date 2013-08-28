using Curses;

int main(string[] args)
{
	if(args.length <3)
	{
		usage(args);
		return 1;
	}
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
	stdout.printf("to use this programme please use the following command:\n%s `termsize`", args[0]);
}
