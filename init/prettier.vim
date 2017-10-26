let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql Prettier

" max line length that prettier will wrap on
let g:prettier#config#print_width = 80

" number of spaces per indentation level
let g:prettier#config#tab_width = 2

" use tabs over spaces
let g:prettier#config#use_tabs = 'false'

" print semicolons
let g:prettier#config#semi = 'true'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'false'

" none|es5|all
let g:prettier#config#trailing_comma = 'none'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'
