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
let g:ctrlp_user_command = 'rg --files %s'

" RG
let g:rg_highlight = 'true'
let g:rg_derive_root = 'true'
