"====[ My Original .vimrc ]================================
    set expandtab
    set ts=4
    set sw=4
    set formatoptions-=r
    set autoindent
    set nocompatible

    set printoptions=paper:letter,duplex:off

"====[ Damian Conway stuff ]===============================
" https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup


"====[ Make the 81st column stand out ]====================

    " EITHER the entire 81st column, full-screen...
"    highlight ColorColumn ctermbg=magenta
"    set colorcolumn=81

    " OR ELSE just the 81st column of wide lines...
    highlight ColorColumn ctermbg=magenta
    call matchadd('ColorColumn', '\%81v', 100)
    call matchadd('ColorColumn', '\%121v', 100)

"====[ Swap : and ; to make colon commands easier to type ]======

    nnoremap  ;  :
    nnoremap  :  ;


"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======

    exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list

"====[ Swap v and CTRL-V, because Block mode is more useful that Visual mode "]======

    nnoremap    v   <C-V>
    nnoremap <C-V>     v

    vnoremap    v   <C-V>
    vnoremap <C-V>     v

"====[ I'm sick of typing :%s/.../.../g ]=======

    nmap S :%s//g<LEFT><LEFT>
"    nmap S [Shortcut for :s///g] :%s//g<LEFT><LEFT>
    vmap S :B s//g<LEFT><LEFT>

