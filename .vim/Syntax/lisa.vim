" Vim syntax file
" Language:     LISA+
" Maintainer:   Anuj Khanna
" Last Change:  2015 May 28
" Revision:     0.1
"
" Syntax highlighting for Language for Instruction Set Architecture (LISA)

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn keyword lisaTodo contained TODO FIXME XXX NOTE
syn match lisaComment "//.*$" contains=lisaTodo
syn region lisaMultiComment start="/*" end="*/" contains=lisaTodo

let b:current_syntax = "lisa"
hi def link lisaTodo            Todo
hi def link lisaComment         Comment
hi def link lisaMultiComment    Comment
