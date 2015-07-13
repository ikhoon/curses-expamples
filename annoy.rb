#!/usr/bin/env ruby

require 'curses'

include Curses

init_screen

strs = %w(Do you find this silly)

strs.each_with_index do | s, i | 
  strs.each_with_index do | t, j | 
    attrset(A_BOLD | A_UNDERLINE) if i == j 
    addstr t
    attroff(A_BOLD | A_UNDERLINE) if i == j 
    addch ' '
  end
  addstr "\b\n"
end

refresh

getch

close_screen
