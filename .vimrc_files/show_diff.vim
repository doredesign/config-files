map  ,sd       :w!<CR>:! if [ -d .svn ]; then svn diff %; else git diff master --no-prefix %; fi \| diff_painter.pl \| less -R<CR>
map! ,sd  <ESC>:w!<CR>:! if [ -d .svn ]; then svn diff %; else git diff master --no-prefix %; fi \| diff_painter.pl \| less -R<CR>

map  ,gd      :w!<CR>:! git diff HEAD % \| diff_painter.pl \| less -R<CR>
map! ,gd <ESC>:w!<CR>:! git diff HEAD % \| diff_painter.pl \| less -R<CR>

" need to look up how you tell svn to use the real diff
"map  ,sdf      :w!<CR>:! svn diff       -1000 % \| diff_painter.pl \| less -R<CR>
"map! ,sdf <ESC>:w!<CR>:! svn diff       -1000 % \| diff_painter.pl \| less -R<CR>

map  ,cd       :w!<CR>:! cvs diff -wubB       % \| diff_painter.pl \| less -R<CR>
map! ,cd  <ESC>:w!<CR>:! cvs diff -wubB       % \| diff_painter.pl \| less -R<CR>

map  ,cdf      :w!<CR>:! cvs diff -wubB -1000 % \| diff_painter.pl \| less -R<CR>
map! ,cdf <ESC>:w!<CR>:! cvs diff -wubB -1000 % \| diff_painter.pl \| less -R<CR>
