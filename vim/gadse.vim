" Author:       gadse
" Repository:   https://github.com/Zsasle/uni-math
" Version:      1.1

" set background=dark

hi clear Normal
set bg&

" if version > 580
hi clear
if exists("syntax_on")
	syntax reset
endif
" endif
" set t_Co=256

let s:t_Co = has('gui_running') ? -1 : (&t_Co ?? 0)
let g:colors_name = "gadse"


if (has('termguicolors') && &termguicolors) || has('gui_running')
	let g:terminal_ansi_colors = ['#000000', '#cd0000', '#00cd00', '#cdcd00', '#0000ee', '#cd00cd', '#00cdcd', '#e5e5e5', '#7f7f7f', '#ff0000', '#00ff00', '#ffff00', '#5c5cff', '#ff00ff', '#00ffff', '#ffffff']
endif

"""""""""""""""""""""""
" General
"""""""""""""""""""""""
hi ColorColumn      ctermfg=NONE    ctermbg=233     cterm=NONE      guifg=NONE          guibg=#121212   gui=NONE
hi Cursor           ctermfg=0       ctermbg=255     cterm=NONE      guifg=#000000       guibg=#EEEEEE   gui=NONE
hi CursorColumn     ctermfg=NONE    ctermbg=233     cterm=NONE      guifg=NONE          guibg=#121212   gui=NONE
hi CursorLine       ctermfg=NONE    ctermbg=233     cterm=NONE      guifg=NONE          guibg=#121212   gui=NONE
hi CursorLineNr     ctermfg=59      ctermbg=223     cterm=NONE      guifg=#5F5F5F       guibg=#121212   gui=NONE
hi DiffAdd          ctermfg=255     ctermbg=64      cterm=bold      guifg=#EEEEEE       guibg=#5F8700   gui=bold
hi DiffChange       ctermfg=NONE    ctermbg=NONE    cterm=NONE      guifg=NONE          guibg=NONE      gui=NONE
hi DiffDelete       ctermfg=196     ctermbg=NONE    cterm=NONE      guifg=#FF1000       guibg=NONE      gui=NONE
hi DiffText         ctermfg=255     ctermbg=24      cterm=bold      guifg=#EEEEEE       guibg=#005F87   gui=bold
hi Directory        ctermfg=208     ctermbg=NONE    cterm=NONE      guifg=#FF8B00       guibg=NONE      gui=NONE
hi ErrorMsg         ctermfg=255     ctermbg=167     cterm=NONE      guifg=#EEEEEE       guibg=#D75F5F   gui=NONE
hi FoldColumn       ctermfg=75      ctermbg=239     cterm=NONE      guifg=#4FA0B7       guibg=#4E4E4E   gui=NONE
hi Folded           ctermfg=242     ctermbg=234     cterm=NONE      guifg=#666666       guibg=#1C1C1C   gui=NONE
hi IncSearch        ctermfg=234     ctermbg=75      cterm=NONE      guifg=#1C1C1C       guibg=#4FA0B7   gui=NONE
hi LineNr           ctermfg=59      ctermbg=0       cterm=NONE      guifg=#5F5F5F       guibg=#000000   gui=NONE
hi MatchParen       ctermfg=NONE    ctermbg=NONE    cterm=underline guifg=NONE          guibg=NONE      gui=underline
hi MoreMsg          ctermfg=28      ctermbg=NONE    cterm=NONE      guifg=#306D00       guibg=NONE      gui=NONE
hi NonText          ctermfg=234     ctermbg=0       cterm=NONE      guifg=#1C1C1C       guibg=#000000   gui=NONE
hi Normal           ctermfg=76      ctermbg=NONE    cterm=NONE      guifg=#66D553       guibg=#000000   gui=NONE
hi Pmenu            ctermfg=NONE    ctermbg=NONE    cterm=NONE      guifg=NONE          guibg=NONE      gui=NONE
hi PmenuSel         ctermfg=NONE    ctermbg=59      cterm=NONE      guifg=NONE          guibg=#5F5F5F   gui=NONE
hi Question         ctermfg=28      ctermbg=NONE    cterm=NONE      guifg=#306D00       guibg=NONE      gui=bold
hi Search           ctermfg=NONE    ctermbg=NONE    cterm=underline guifg=NONE          guibg=NONE      gui=underline
hi SignColumn       ctermfg=NONE    ctermbg=237     cterm=NONE      guifg=NONE          guibg=#3A3A3A   gui=NONE
hi StatusLine       ctermfg=255     ctermbg=239     cterm=bold      guifg=#EEEEEE       guibg=#4E4E4E   gui=bold
hi StatusLineNC     ctermfg=255     ctermbg=239     cterm=NONE      guifg=#EEEEEE       guibg=#4E4E4E   gui=NONE
hi Title            ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi Underlined       ctermfg=NONE    ctermbg=NONE    cterm=NONE      guifg=NONE          guibg=NONE      gui=NONE
hi VertSplit        ctermfg=239     ctermbg=239     cterm=NONE      guifg=#4E4E4E       guibg=#4E4E4E   gui=NONE
hi Visual           ctermfg=NONE    ctermbg=53      cterm=NONE      guifg=NONE          guibg=#303030   gui=NONE
hi WarningMsg       ctermfg=255     ctermbg=167     cterm=NONE      guifg=#EEEEEE       guibg=#D75F5F   gui=NONE
hi WildMenu         ctermfg=234     ctermbg=215     cterm=NONE      guifg=#1C1C1C       guibg=#FFAF5F   gui=NONE
hi NERDTreeUp       ctermfg=196     ctermbg=NONE    cterm=NONE      guifg=#FF1000       guibg=NONE      gui=NONE
hi NERDTreeDir      ctermfg=251     ctermbg=NONE    cterm=bold      guifg=#C6C6C6       guibg=NONE      gui=bold
hi NERDTreeDirSlash ctermfg=251     ctermbg=NONE    cterm=NONE      guifg=#C6C6C6       guibg=NONE      gui=NONE
hi NERDTreeFile     ctermfg=241     ctermbg=NONE    cterm=NONE      guifg=#606060       guibg=NONE      gui=NONE
hi NERDTreeCWD      ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi NERDTreeOpenable ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi NERDTreeClosable ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE

"""""""""""""""""""""""
" Syntax Highlighting
"""""""""""""""""""""""
hi Boolean          ctermfg=196     ctermbg=NONE    cterm=NONE      guifg=#FF1000       guibg=NONE      gui=NONE
hi Character        ctermfg=196     ctermbg=NONE    cterm=NONE      guifg=#FF1000       guibg=NONE      gui=NONE
hi Comment          ctermfg=208     ctermbg=NONE    cterm=ITALIC    guifg=#FF8B00       guibg=NONE      gui=NONE
hi Conditional      ctermfg=129     ctermbg=NONE    cterm=BOLD      guifg=#AF00FF       guibg=NONE      gui=NONE
hi Constant         ctermfg=200     ctermbg=NONE    cterm=NONE      guifg=#FF1FCE       guibg=NONE      gui=NONE
hi Define           ctermfg=200     ctermbg=NONE    cterm=NONE      guifg=#FF1FCE       guibg=NONE      gui=NONE
hi Error            ctermfg=15      ctermbg=196     cterm=NONE      guifg=#FFFFFF       guibg=#FF1000   gui=NONE
hi Float            ctermfg=196     ctermbg=NONE    cterm=NONE      guifg=#FF1000       guibg=NONE      gui=NONE
hi Function         ctermfg=220     ctermbg=NONE    cterm=BOLD      guifg=#FFC511       guibg=NONE      gui=NONE
hi Identifier       ctermfg=93      ctermbg=NONE    cterm=NONE      guifg=#F10000       guibg=NONE      gui=italic
hi Keyword          ctermfg=208     ctermbg=NONE    cterm=BOLD      guifg=#FF8B00       guibg=NONE      gui=NONE
hi Label            ctermfg=76      ctermbg=NONE    cterm=NONE      guifg=#66D553       guibg=NONE      gui=NONE
hi Number           ctermfg=196     ctermbg=NONE    cterm=NONE      guifg=#FF1000       guibg=NONE      gui=NONE
hi Operator         ctermfg=76      ctermbg=NONE    cterm=NONE      guifg=#66D553       guibg=NONE      gui=NONE
hi PreCondit        ctermfg=15      ctermbg=NONE    cterm=NONE      guifg=#FFFFFF       guibg=NONE      gui=NONE
hi PreProc          ctermfg=15      ctermbg=NONE    cterm=NONE      guifg=#FFFFFF       guibg=NONE      gui=NONE
hi Repeat           ctermfg=15      ctermbg=NONE    cterm=NONE      guifg=#FFFFFF       guibg=NONE      gui=NONE
hi Special          ctermfg=220     ctermbg=NONE    cterm=NONE      guifg=#FFC511       guibg=NONE      gui=NONE
hi SpecialComment   ctermfg=220     ctermbg=NONE    cterm=UNDERLINE guifg=#FFC511       guibg=NONE      gui=underline
hi SpecialKey       ctermfg=0 	    ctermbg=220     cterm=NONE      guifg=#000000	guibg=#FFC511   gui=NONE
hi SpellBad         ctermfg=75      ctermbg=NONE    cterm=UNDERLINE guifg=#AF00FF       guibg=NONE      gui=undercurl
hi SpellCap         ctermfg=12      ctermbg=NONE    cterm=UNDERLINE guifg=#336ED9       guibg=NONE      gui=undercurl
hi SpellRare        ctermfg=75      ctermbg=NONE    cterm=UNDERLINE guifg=#4FA0B7       guibg=NONE      gui=undercurl
hi SpellLocal       ctermfg=62      ctermbg=NONE    cterm=UNDERLINE guifg=#331EB5       guibg=NONE      gui=undercurl
hi Statement        ctermfg=129     ctermbg=NONE    cterm=BOLD      guifg=#AF00FF       guibg=NONE      gui=NONE
hi StorageClass     ctermfg=93      ctermbg=NONE    cterm=BOLD      guifg=#FFAF5F       guibg=NONE      gui=italic
hi String           ctermfg=200     ctermbg=NONE    cterm=NONE      guifg=#FF1FCE       guibg=NONE      gui=NONE
hi Structure        ctermfg=93      ctermbg=NONE    cterm=BOLD      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi Tag              ctermfg=196     ctermbg=NONE    cterm=NONE      guifg=#FF1000       guibg=NONE      gui=NONE
hi Todo             ctermfg=220     ctermbg=8       cterm=INVERSE   guifg=#FFC511       guibg=#1C1C1C   gui=inverse,bold
hi Type             ctermfg=196     ctermbg=NONE    cterm=NONE      guifg=#FF1000       guibg=NONE      gui=NONE

"""""""""""""""""""""""
" Supports
"""""""""""""""""""""""
hi cInclude             ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE " C++
hi cOperator            ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi cppStatement         ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi cssAttr              ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE " CSS/CSS3
hi cssAttrComma         ctermfg=231     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi cssBoxProp           ctermfg=152     ctermbg=NONE    cterm=NONE      guifg=#AFD7D7       guibg=NONE      gui=NONE
hi cssBraces            ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi cssClassName         ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi cssColor             ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi cssCommonAttr        ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi cssFontAttr          ctermfg=150     ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi cssFunctionName      ctermfg=75      ctermbg=NONE    cterm=NONE      guifg=#4FA0B7       guibg=NONE      gui=NONE
hi cssNoise             ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi cssProp              ctermfg=152     ctermbg=NONE    cterm=NONE      guifg=#AFD7D7       guibg=NONE      gui=NONE
hi cssPseudoClass       ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi cssPseudoClassId     ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi cssTagName           ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi cssUIAttr            ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi cssUnitDecorators    ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi cssURL               ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=italic
hi cssValueLength       ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi cssValueNumber       ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi cssVendor            ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi htmlArg              ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE " HTML/HTML5
hi htmlEndTag           ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi htmlScriptTag        ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi htmlSpecialChar      ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi htmlSpecialTagName   ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi htmlTag              ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi htmlTagName          ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi javaScriptBoolean    ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE " JavaScript
hi javaScriptBraces     ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi javaScriptConditional ctermfg=140    ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptException  ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptFunction   ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=italic
hi javaScriptGlobal     ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi javaScriptIdentifier ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptLabel      ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptMessage    ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi javaScriptNull       ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi javaScriptNumber     ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi javaScriptOperator   ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptParens     ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptRegexpString ctermfg=117   ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptRepeat     ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi javaScriptSpecial    ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi javaScriptStatement  ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi markdownCode         ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE " Markdown
hi markdownCodeBlock    ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi markdownCodeDelimiter ctermfg=247    ctermbg=NONE    cterm=NONE      guifg=#9E9E9E       guibg=NONE      gui=NONE
hi markdownError        ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi markdownHeadingDelimiter ctermfg=150 ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi markdownUrl          ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi phpBoolean           ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE " PHP
hi phpClass             ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi phpClassDelimiter    ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpClassExtends      ctermfg=150     ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi phpClassImplements   ctermfg=150     ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi phpCommentStar       ctermfg=240     ctermbg=NONE    cterm=NONE      guifg=#585858       guibg=NONE      gui=NONE
hi phpCommentTitle      ctermfg=240     ctermbg=NONE    cterm=NONE      guifg=#585858       guibg=NONE      gui=NONE
hi phpDocComment        ctermfg=240     ctermbg=NONE    cterm=NONE      guifg=#585858       guibg=NONE      gui=NONE
hi phpDocIdentifier     ctermfg=240     ctermbg=NONE    cterm=NONE      guifg=#585858       guibg=NONE      gui=NONE
hi phpDocParam          ctermfg=240     ctermbg=NONE    cterm=NONE      guifg=#585858       guibg=NONE      gui=NONE
hi phpDocTags           ctermfg=242     ctermbg=NONE    cterm=NONE      guifg=#666666       guibg=NONE      gui=NONE
hi phpFunction          ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi phpFunctions         ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi phpIdentifier        ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi phpInclude           ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi phpKeyword           ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi phpMethod            ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi phpNumber            ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi phpOperator          ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpParent            ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpMemberSelector    ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpMethodsVar        ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi phpStaticClasses     ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi phpStringDouble      ctermfg=150     ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi phpStringDelimiter   ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi phpStringSingle      ctermfg=150     ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi phpSuperglobals      ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi phpType              ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi phpUseClass          ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi phpVarSelector       ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi pythonConditional    ctermfg=200     ctermbg=NONE    cterm=NONE      guifg=#FF1FCE       guibg=NONE      gui=NONE " Python
hi pythonDecorator      ctermfg=200     ctermbg=NONE    cterm=NONE      guifg=#FF1FCE       guibg=NONE      gui=NONE
hi pythonException      ctermfg=200     ctermbg=NONE    cterm=NONE      guifg=#FF1FCE       guibg=NONE      gui=NONE
hi pythonFunction       ctermfg=220     ctermbg=NONE    cterm=bold      guifg=#FFC511       guibg=NONE      gui=NONE
hi pythonInclude        ctermfg=129     ctermbg=NONE    cterm=NONE      guifg=#AF00FF       guibg=NONE      gui=NONE
hi pythonNumber         ctermfg=196     ctermbg=NONE    cterm=NONE      guifg=#FF1000       guibg=NONE      gui=NONE
hi pythonOperator       ctermfg=76      ctermbg=NONE    cterm=bold      guifg=#66D533       guibg=NONE      gui=NONE
hi pythonRepeat         ctermfg=220     ctermbg=NONE    cterm=bold      guifg=#FF1FCE       guibg=NONE      gui=NONE
hi pythonStatement      ctermfg=200     ctermbg=NONE    cterm=bold      guifg=#FF1FCE       guibg=NONE      gui=NONE
hi pythonTodo           ctermfg=75      ctermbg=NONE    cterm=NONE      guifg=#4FA0B7       guibg=NONE      gui=NONE
hi rubyBlockParameter   ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE " Ruby
hi rubyClass            ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi rubyClassVariable    ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyConstant         ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=italic
hi rubyControl          ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyException        ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi rubyFunction         ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi rubyInclude          ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi rubyInstanceVariable ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyInterpolationDelimiter ctermfg=117 ctermbg=NONE  cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyOperator         ctermfg=140     ctermbg=NONE    cterm=NONE      guifg=#AF87D7       guibg=NONE      gui=NONE
hi rubyPseudoVariable   ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi rubyRegexp           ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyRegexpDelimiter  ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubyStringDelimiter  ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi rubySymbol           ctermfg=150     ctermbg=NONE    cterm=NONE      guifg=#AFD787       guibg=NONE      gui=NONE
hi sassClass            ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE " Sass
hi sassClassChar        ctermfg=215     ctermbg=NONE    cterm=NONE      guifg=#FFAF5F       guibg=NONE      gui=NONE
hi sassFunction         ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi sassInclude          ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi sassVariable         ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi shFunction           ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE " Shell
hi shOperator           ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi shStatement          ctermfg=74      ctermbg=NONE    cterm=NONE      guifg=#5FAFD7       guibg=NONE      gui=NONE
hi shTestOpr            ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi shVariable           ctermfg=255     ctermbg=NONE    cterm=NONE      guifg=#EEEEEE       guibg=NONE      gui=NONE
hi xmlAttrib            ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE " XML
hi xmlCdataStart        ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlCdataCdata        ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlEndTag            ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE
hi xmlEntity            ctermfg=173     ctermbg=NONE    cterm=NONE      guifg=#D7875F       guibg=NONE      gui=NONE
hi xmlEntityPunct       ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlEqual             ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlProcessingDelim   ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlTag               ctermfg=117     ctermbg=NONE    cterm=NONE      guifg=#87D7FF       guibg=NONE      gui=NONE
hi xmlTagName           ctermfg=167     ctermbg=NONE    cterm=NONE      guifg=#D75F5F       guibg=NONE      gui=NONE

hi! link Terminal Normal
hi! link Debug Special
hi! link Added String
hi! link Removed WarningMsg
hi! link diffOnly WarningMsg
hi! link diffNoEOL WarningMsg
hi! link diffIsA WarningMsg
hi! link diffIdentical WarningMsg
hi! link diffDiffer WarningMsg
hi! link diffCommon WarningMsg
hi! link diffBDiffer WarningMsg
hi! link lCursor Cursor
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link CurSearch Search
hi! link CursorLineNr CursorLine
hi! link CursorLineFold CursorLine
hi! link CursorLineSign CursorLine
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLine StatusLineNC
hi! link TabLineFill StatusLineNC
hi! link TabLineSel StatusLine
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
hi! link Define PreProc
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi! link Include PreProc
hi! link Keyword Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Type
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link Terminal Normal
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo

unlet s:t_Co
finish

