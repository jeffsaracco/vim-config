" CtrlP
let g:ctrlp_map = '<leader>f'
" let g:ctrlp_working_path_mode = 'ra'
map <c-p>       :CtrlPMRUFiles<CR>
map <leader>F   :<F5>CtrlP<CR>
map <leader>f   :<F5>CtrlP<CR>

" ctrlp
" <leader>f is the default trigger (set in init/ctrlp.vim)
" nnoremap <silent> <leader>F :CtrlPClearAllCaches<CR>:CtrlPCurWD<CR>

" let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_user_command = 'rg --files --hidden %s'

" FZF
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }
" map <leader>F   :Files<CR>
" map <leader>f   :Files<CR>

" RG
let g:rg_highlight = 'true'
let g:rg_derive_root = 'true'
