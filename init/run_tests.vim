" map <Leader>rr :RunRubyFocusedTest<CR>
map <Leader>rr :TestNearest<CR>
" map <Leader>cr :RunRubyFocusedContext<CR>
" map <Leader>R :RunAllRubyTests<CR>
map <Leader>R :call VimuxRunCommand("clear; bin/testrb " . bufname("%"))<CR>

let g:test#strategy = "vimux"
let test#runners = {'Ruby': ['Github', 'MiniTest', 'Rails', 'RSpec']}
