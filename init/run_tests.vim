" map <Leader>rr :RunRubyFocusedTest<CR>
map <Leader>rr :TestNearest<CR>
" map <Leader>cr :RunRubyFocusedContext<CR>
" map <Leader>R :RunAllRubyTests<CR>
map <Leader>R :call VimuxRunCommand("clear; bin/testrb " . bufname("%"))<CR>

let g:test#ruby#minitest#executable = 'RAILS_ENV=test bin/safe-ruby'
let g:test#strategy = "vimux"
