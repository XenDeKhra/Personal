" Turning on Syntax Highlighting
syntax on
" Turning off compatibility to prevent any weird things from happening when opening other people's files
set nocompatible
" Turning on numbers for each line (you can run 'set nonumber' from command mode to turn it off if you need to copy multiple lines from the editor)
set number
" Turning on auto indentation
set autoindent
" Setting the how far back you can undo (:u)
set undolevels=100
" Set the number of spaces that <Tab> will use
set shiftwidth=4
set tabstop=4
" Tell <Tab> to use the number of spaces set in shiftwidth
set smarttab
" Set Backspace to back over lines in command mode
set backspace=2
" Tell vim to automatically write changes to the file on swapping
set autowrite
" Don't save the commands I've entered into the command mode
set noshowcmd
" Use a visual bell instead of an audio beep
set visualbell
" Set the command bar to use 2 lines to show more data (such as the file name and line values)
set cmdheight=2
" This automatically displays the status line at the bottom always
" The advantage of having the status line displayed always is, you can see the
" current mode, file name, file status, ruler, etc.
au VimEnter * set laststatus=2
" Set the ruler, which is the line and column location of the cursor 
set ruler
" Set the number of command lines remembered, so you can go back through your commands when in command mode
set history=100
" Disable highlighting of the search results (Use 'set hlsearch' to enable highlighting of search results)
set nohlsearch
