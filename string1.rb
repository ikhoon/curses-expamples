#!/usr/bin/env ruby

require 'curses'

include Curses

init_screen

addstr "What is your first name? "
refresh
first = getstr

addstr "What is your last name? "
refresh
last = getstr

addstr "Pleased to meet you, #{first} #{last}"

refresh

getch

close_screen
