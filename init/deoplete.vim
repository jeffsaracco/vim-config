let g:deoplete#enable_at_startup = 1

call deoplete#custom#option({
      \ 'auto_complete_delay': 500,
      \ 'smart_case': v:true,
      \ 'max_list': 20,
      \ })
call deoplete#custom#option('keyword_patterns', {
      \ 'ruby': '[a-zA-Z_]\w*[!?]?',
      \})
