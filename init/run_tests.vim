autocmd BufRead,BufNewFile $HOME/github/github/* nmap <silent> <leader>R :VimuxRunCommand("clear; noti bin/testrb " . bufname("%"))<CR>
autocmd BufRead,BufNewFile $HOME/github/github/* nmap <silent> <leader>rr :VimuxRunCommand("clear; noti script/tt " . @% . ":" . line("."))<CR>

let g:test#strategy = "vimux"
let test#runners = {'Ruby': ['MiniTest', 'Rails', 'RSpec']}
