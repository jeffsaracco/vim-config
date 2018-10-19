" map <Leader>rr :RunRubyFocusedTest<CR>
autocmd Filetype ruby map <Leader>rr :TestNearest<CR>
autocmd Filetype ruby map <Leader>rl :TestLast<CR>
" map <Leader>cr :RunRubyFocusedContext<CR>
" map <Leader>R :RunAllRubyTests<CR>
autocmd Filetype ruby map <Leader>R :call VimuxRunCommand("clear; bin/testrb " . bufname("%"))<CR>

let g:test#strategy = "vimux"
let test#runners = {'Ruby': ['Github', 'MiniTest', 'Rails', 'RSpec']}
