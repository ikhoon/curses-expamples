#!/usr/bin/env ruby

require 'curses'

include Curses

init_screen

addstr("Type few lines of text")
addstr("Press ~ to quit\n")

refresh

while ch = getch() != '~' 
  ;
end

close_screen
