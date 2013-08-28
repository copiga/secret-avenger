#!/bin/bash

gcc getscreensize.c -lncurses -o termsize;
valac *.vala --pkg curses -X -lncurses -o secret-avenger
