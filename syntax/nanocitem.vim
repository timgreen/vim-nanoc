" Vim syntax file
" Language:	Nanoc Item
" Maintainer:	Tim Green <iamtimgreen@gmail.com>
" Last Change:  2012-02-06

if !exists("b:current_syntax") || b:current_syntax =~ '.nanoc$'
  finish
endif

let b:main_syntax_for_nanoc_item = b:current_syntax
unlet b:current_syntax

syn include @nanocYaml syntax/yaml.vim
syn region nanocYamlBlock  start=+---+ keepend end=+---+ contains=@nanocYaml

let b:current_syntax = b:main_syntax_for_nanoc_item . '.nanoc'
unlet b:main_syntax_for_nanoc_item

" vim:set sw=2:
