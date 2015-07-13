#!/usr/bin/env ruby

require 'curses'

include Curses

init_screen
message = "Good Bye!"
while message.size > 0 
  addch message.shift
  refresh
  sleep 0.1
end
getch
close_screen
