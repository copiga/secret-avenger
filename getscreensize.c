#include <stdio.h>
#include <ncurses.h>

int main(void)
{
  int x, y;
  initscr();
  getmaxyx(stdscr,y,x);
  endwin();
  printf("%d %d", y, x);
  return 0;
}
