#!/usr/bin/env ruby

require 'curses'

include Curses

init_screen

str1 = "Oh give me a clone!\n"
str2 = "Yes a clone of my own!"

addstr(str1)
addstr(str2)
(3..10).each do | y |
  setpos(y,0)
  addstr("With the Y : #{y} chromosome changed to the X.")
  refresh
  sleep 0.1
end

refresh

getch

close_screen
