# Write Programmer Guilde To Ncurses `C lang Examples` in Ruby
![guide-to-ncurses](http://ecx.images-amazon.com/images/I/418nX%2B59vKL._SX395_BO1,204,203,200_.jpg)

`Write Programmer Guilde To Ncurses` has good examples written in c lang.
But Ruby [curses library](http://ruby-doc.org/stdlib-2.0.0/libdoc/curses/rdoc/Curses.html) gives more simple and easy to use.

## With c ncurses api
```c
// annoy.c

#include <ncurses.h>

#define COUNT 5

int main(void) {
  char text[COUNT][10] = { “Do”, “you”, “find”, “this”, “silly?” };
  int a,b;

  initscr();

  for(a=0;a<COUNT;a++)
  {
    for(b=0;b<COUNT;b++)
    {
      if(b==a) attrset(A_BOLD | A_UNDERLINE);
      printw(“%s”,text[b]);
      if(b==a) attroff(A_BOLD | A_UNDERLINE);
      addch(‘ ‘);
    }
    addstr(“\b\n”);
  }
  refresh();
  getch();

  endwin();
  return 0;
}
```

## With ruby ncurses api
```ruby
#!/usr/bin/env ruby
# annoy.rb

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
```

## Excute Result   
Both ruby & c code produce same output
![annoy-result](./docs/annoy-result.png)
