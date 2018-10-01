set ignorecase

" CtrlP
" let g:ctrlp_map = '<leader>f'
let g:ctrlp_use_caching = 0
map <c-p>       :CtrlPMRUFiles<CR>
" map <leader>F   :<F5>CtrlP<CR>
" map <leader>f   :<F5>CtrlP<CR>

let g:ctrlp_user_command = 'rg -i --files %s'
" let g:ctrlp_match_func = { 'match': 'cpsm#CtrlPMatch' }


" FZF
map <leader>F   :FZF<CR>
map <leader>f   :FZF<CR>

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'down': '~40%' }

" RG
let g:rg_highlight = 'true'
let g:rg_derive_root = 'true'
let g:rg_command = 'rg -S --vimgrep'

set grepprg=rg\ --vimgrep

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
