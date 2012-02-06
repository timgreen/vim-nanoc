func! s:FTnanoc(maintype)
  if getline(1) =~ '^---\s*$'
    exec 'setf ' . a:maintype . '.nanocitem'
    return
  endif
endfunc

augroup filetypedetect
  au BufNewFile,BufRead,BufWrite *.markdown,*.mdown,*.mkd,*.mkdn,README.md call s:FTnanoc('markdown')
  au BufNewFile,BufRead,BufWrite *.html                                    call s:FTnanoc('html')
  au BufNewFile,BufRead,BufWrite *.haml                                    call s:FTnanoc('haml')
  au BufNewFile,BufRead,BufWrite *.erb                                     call s:FTnanoc('erb')
  au BufNewFile,BufRead,BufWrite *.less                                    call s:FTnanoc('less')
  au BufNewFile,BufRead,BufWrite *.css                                     call s:FTnanoc('css')
augroup END
