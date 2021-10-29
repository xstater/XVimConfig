function! xstatervim#before() abort
    " NERD Tree
    let g:NERDTreeMinimalUI = 1
    " transparent background
    autocmd ColorScheme * call s:transparent_background()

    " disable swapfile
    set noswapfile

    call SpaceVim#custom#SPCGroupName(['/'],'+Custom')

    " coc config
    let g:coc_config_home = '$HOME/.SpaceVim.d'
    let g:coc_global_extensions = [
        \ 'coc-marketplace',
        \ 'coc-json', 
        \ 'coc-vimlsp', 
        \ 'coc-rust-analyzer',
        \ 'coc-calc',
        \ 'coc-toml',
        \ 'coc-lightbulb']

    set hidden
    set updatetime=100
    set shortmess+=c
    set signcolumn=yes

    call SpaceVim#custom#SPC('nmap',['/','/'],'<Plug>(coc-codeaction-cursor)',"Show coc.nvim code actions",0)
    " call SpaceVim#custom#SPC('nmap',['/','d'], ':call show_documentation()<CR>', "Show coc.nvim documents", 0)

    autocmd CursorHold * silent call CocActionAsync('highlight')

    nnoremap <silent> K :call <SID>show_documentation()<CR>
endfunction

function! xstatervim#after() abort
    call SpaceVim#plugins#tasks#reg_provider(funcref('s:rust_tasks'))
endfunction

function! s:transparent_background()
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NonText guibg=NONE ctermbg=NONE
endfunction

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

function s:rust_tasks() abort
    let s:file = SpaceVim#api#import('file')
    let conf = {}
    " ensure its rust project
    if filereadable('Cargo.toml')
        " check its bin or lib
        if filereadable('src/main.rs')
            call extend(conf, {
                        \ 'main' : {
                            \ 'command' : 'cargo',
                            \ 'args': ['run'],
                            \ 'isDetected' : 1,
                            \ 'detectedName' : 'cargo:'
                            \}
                        \})
        endif
        " generate for examples
        for example in s:file.ls('examples',1) 
            " remove the .rs 
            let name = fnamemodify(example,":r")
            call extend(conf, {
                        \ name : {
                            \ 'command' : 'cargo',
                            \ 'args' : ['run','--example',name],
                            \ 'isDetected' : 1,
                            \ 'detectedName' : 'cargo example:'
                            \}
                        \})
        endfor
        return conf
    else
        return {}
    endif
endfunction
