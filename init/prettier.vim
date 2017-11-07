let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql Prettier

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

" none|es5|all
let g:prettier#config#trailing_comma = 'none'

" put > on the last line instead of new line
let g:prettier#config#jsx_bracket_same_line = 'false'

" flow|babylon|typescript|postcss|json|graphql
let g:prettier#config#parser = 'babylon'
