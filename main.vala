using Curses;

int main(string[] args)
{
	string name = "null"; //add a string so that this will compile, must be pre-assigned
	FileStream scores = FileStream.open("scores", "a");
	
	if(args.length <4)
	{
		stdout.printf("to use this programme please use the following command:\n%s `termsize`\n", args[0]);
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
	
	stdout.printf("your score is %d. please enter your name for the leaderboard\n", global.score);
	stdin.scanf(" %s", name);
	scores.printf("%s\t%d\n", name, global.score);
	
	return 0;
}
