" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')
" 快捷键映射
lua require('keybindings')
" 皮肤设置
set background=dark
colorscheme zephyr

" 插件配置
" lua require('plugin-config/which-key')
" lua require('plugin-config/nvim-treesitter')
" lua require('plugin-config/telescop')
" lua require('plugin-config/nvim-autopairs')
lua require('plugin-config/nvim-tree')
" lua require('plugin-config/bufferline')
" lua require('plugin-config/surround')
" lua require('plugin-config/comment')
" lua require('plugin-config/nvim-colorizer')
" lua require('plugin-config/rust-tools')

" lsp
" lua require('lsp/nvim-cmp-config')
" lua require('lsp/diagnostic_signs')
" lua require('lsp/language_servers')
"lua require('plugin-config/coc-nvim')

" Rname keys for gotos
"nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gm <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim', 'help'], &filetype) >= 0)
    execute 'h'.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
