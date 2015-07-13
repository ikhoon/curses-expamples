#!/usr/bin/env ruby

require 'curses'

include Curses

init_screen

str1 = "Oh give me a clone!\n"
str2 = "Yes a clone of my own!"

addstr(str1)
addstr(str2)

refresh

getch

close_screen
