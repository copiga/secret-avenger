#include <stdio.h>
#include <ncurses.h>

int main(void)
{
  int x, y;
  initscr();
  getmaxyx(stdscr,y,x);
  endwin();
  printf(" %d %d", y, x);/*requires oddness in main.vala...*/
  return 0;
}
