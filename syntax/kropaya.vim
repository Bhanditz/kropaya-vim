" Vim syntax file
" Language:    Kropaya <https://github.com/flaviusb/kropaya>
" Maintainer:  :flaviusb
" Last Change: May 29, 2015
" URL:         http://github.com/flaviusb/kropaya-vim


" For vim-version 5.x: Clear all syntax items
" For vim-version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Cursorline makes using bg highlights less effective for detecting scope
" problems
setlocal nocursorline

" Change this to something correct at some point
setlocal iskeyword=35,36,37,42,43,45,47,48,49,50,51,52,53,54,55,56,57,58,61,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,92,94,95,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,126

syn case match 

syn cluster ListCluster contains=TOP,ParenError2,CurlyError2,SquareError2,AngleError2,Curly0,Curly1,Curly2,Curly3,Curly4,Curly5,Curly6,Curly7,Curly8,Curly9,Curly0,Curly1,Curly2,Curly3,Curly4,Curly5,Curly6,Curly7,Curly8,Curly9,Square0,Square1,Square2,Square3,Square4,Square5,Square6,Square7,Square8,Square9,Angle0,Angle1,Angle2,Angle3,Angle4,Angle5,Angle6,Angle7,Angle8,Angle9

syn match CurlyError display "}"
syn match SquareError display "]"
syn match CurlyError2 display "}" contained
syn match SquareError2 display "]" contained

syn match ParenError display ")" 
syn match ParenError2 display ")" contained

syn match AngleError display ">" 
syn match AngleError2 display ">" contained

syn region Paren0 matchgroup=hlLevel0 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" matchgroup=hlLevel0 end=")" contains=@ListCluster,Paren1,Curly1,Square1,Angle1 
syn region Paren1 matchgroup=hlLevel1 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" matchgroup=hlLevel1 end=")" contains=@ListCluster,Paren2,Curly2,Square2,Angle2 contained 
syn region Paren2 matchgroup=hlLevel2 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" matchgroup=hlLevel2 end=")" contains=@ListCluster,Paren3,Curly3,Square3,Angle3 contained 
syn region Paren3 matchgroup=hlLevel3 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" matchgroup=hlLevel3 end=")" contains=@ListCluster,Paren4,Curly4,Square4,Angle4 contained 
syn region Paren4 matchgroup=hlLevel4 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" matchgroup=hlLevel4 end=")" contains=@ListCluster,Paren5,Curly5,Square5,Angle5 contained 
syn region Paren5 matchgroup=hlLevel5 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" matchgroup=hlLevel5 end=")" contains=@ListCluster,Paren6,Curly6,Square6,Angle6 contained 
syn region Paren6 matchgroup=hlLevel6 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" matchgroup=hlLevel6 end=")" contains=@ListCluster,Paren7,Curly7,Square7,Angle7  contained 
syn region Paren7 matchgroup=hlLevel7 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" matchgroup=hlLevel7 end=")" contains=@ListCluster,Paren8,Curly8,Square8,Angle8 contained 
syn region Paren8 matchgroup=hlLevel8 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" matchgroup=hlLevel8 end=")" contains=@ListCluster,Paren9,Curly9,Square9,Angle9 contained 
syn region Paren9 matchgroup=hlLevel9 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" matchgroup=hlLevel9 end=")" contains=@ListCluster,Paren0,Curly0,Square0,Angle0 contained 

syn region Curly0 matchgroup=hlLevel0 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" matchgroup=hlLevel0 end="}" contains=@ListCluster,Curly1,Paren1,Square1,Angle1 
syn region Curly1 matchgroup=hlLevel1 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" matchgroup=hlLevel1 end="}" contains=@ListCluster,Curly2,Paren2,Square2,Angle2 contained 
syn region Curly2 matchgroup=hlLevel2 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" matchgroup=hlLevel2 end="}" contains=@ListCluster,Curly3,Paren3,Square3,Angle3 contained 
syn region Curly3 matchgroup=hlLevel3 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" matchgroup=hlLevel3 end="}" contains=@ListCluster,Curly4,Paren4,Square4,Angle4 contained 
syn region Curly4 matchgroup=hlLevel4 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" matchgroup=hlLevel4 end="}" contains=@ListCluster,Curly5,Paren5,Square5,Angle5 contained 
syn region Curly5 matchgroup=hlLevel5 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" matchgroup=hlLevel5 end="}" contains=@ListCluster,Curly6,Paren6,Square6,Angle6 contained 
syn region Curly6 matchgroup=hlLevel6 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" matchgroup=hlLevel6 end="}" contains=@ListCluster,Curly7,Paren7,Square7,Angle7 contained 
syn region Curly7 matchgroup=hlLevel7 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" matchgroup=hlLevel7 end="}" contains=@ListCluster,Curly8,Paren8,Square8,Angle8 contained 
syn region Curly8 matchgroup=hlLevel8 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" matchgroup=hlLevel8 end="}" contains=@ListCluster,Curly9,Paren9,Square9,Angle9 contained 
syn region Curly9 matchgroup=hlLevel9 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" matchgroup=hlLevel9 end="}" contains=@ListCluster,Curly0,Paren0,Square0,Angle0 contained 

syn region Square0 matchgroup=hlLevel0 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" matchgroup=hlLevel0 end="]" contains=@ListCluster,Square1,Paren1,Curly1,Angle1 
syn region Square1 matchgroup=hlLevel1 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" matchgroup=hlLevel1 end="]" contains=@ListCluster,Square2,Paren2,Curly2,Angle2 contained 
syn region Square2 matchgroup=hlLevel2 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" matchgroup=hlLevel2 end="]" contains=@ListCluster,Square3,Paren3,Curly3,Angle3 contained 
syn region Square3 matchgroup=hlLevel3 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" matchgroup=hlLevel3 end="]" contains=@ListCluster,Square4,Paren4,Curly4,Angle4 contained 
syn region Square4 matchgroup=hlLevel4 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" matchgroup=hlLevel4 end="]" contains=@ListCluster,Square5,Paren5,Curly5,Angle5 contained 
syn region Square5 matchgroup=hlLevel5 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" matchgroup=hlLevel5 end="]" contains=@ListCluster,Square6,Paren6,Curly6,Angle6 contained 
syn region Square6 matchgroup=hlLevel6 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" matchgroup=hlLevel6 end="]" contains=@ListCluster,Square7,Paren7,Curly7,Angle7 contained 
syn region Square7 matchgroup=hlLevel7 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" matchgroup=hlLevel7 end="]" contains=@ListCluster,Square8,Paren8,Curly8,Angle8 contained 
syn region Square8 matchgroup=hlLevel8 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" matchgroup=hlLevel8 end="]" contains=@ListCluster,Square9,Paren9,Curly9,Angle9 contained 
syn region Square9 matchgroup=hlLevel9 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" matchgroup=hlLevel9 end="]" contains=@ListCluster,Square0,Paren0,Curly0,Angle0 contained 

syn region Angle0 matchgroup=hlLevel0 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=<" matchgroup=hlLevel0 end=">" contains=@ListCluster,Angle1,Paren1,Curly1,Square1 
syn region Angle1 matchgroup=hlLevel1 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=<" matchgroup=hlLevel1 end=">" contains=@ListCluster,Angle2,Paren2,Curly2,Square2 contained 
syn region Angle2 matchgroup=hlLevel2 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=<" matchgroup=hlLevel2 end=">" contains=@ListCluster,Angle3,Paren3,Curly3,Square3 contained 
syn region Angle3 matchgroup=hlLevel3 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=<" matchgroup=hlLevel3 end=">" contains=@ListCluster,Angle4,Paren4,Curly4,Square4 contained 
syn region Angle4 matchgroup=hlLevel4 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=<" matchgroup=hlLevel4 end=">" contains=@ListCluster,Angle5,Paren5,Curly5,Square5 contained 
syn region Angle5 matchgroup=hlLevel5 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=<" matchgroup=hlLevel5 end=">" contains=@ListCluster,Angle6,Paren6,Curly6,Square6 contained 
syn region Angle6 matchgroup=hlLevel6 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=<" matchgroup=hlLevel6 end=">" contains=@ListCluster,Angle7,Paren7,Curly7,Square7 contained 
syn region Angle7 matchgroup=hlLevel7 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=<" matchgroup=hlLevel7 end=">" contains=@ListCluster,Angle8,Paren8,Curly8,Square8 contained 
syn region Angle8 matchgroup=hlLevel8 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=<" matchgroup=hlLevel8 end=">" contains=@ListCluster,Angle9,Paren9,Curly9,Square9 contained 
syn region Angle9 matchgroup=hlLevel9 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=<" matchgroup=hlLevel9 end=">" contains=@ListCluster,Angle0,Paren0,Curly0,Square0 contained 


syn region hashBang start=/^#!\// end=/$/

syn region Comment start=/※/ start=/؟/ end=/$/ contains=@Spell
syn region Comment start=/#\./ end=/\./ contains=@Spell

syn match LiteralLabelStart display /&/ nextgroup=LiteralLabelBody
syn match LiteralLabelBody display "\(\(\([_+]+[_+:]*\)\?[a-zA-Z][a-zA-Z0-9_$!?%=-]*\)\|\([~!@$%^*_=\'`/?×÷≠⧺⧻§∘•≢∨∪∩□⊃∈+-]\+[~!@$%^*_=\'`/?×÷≠⧺⧻§∘•≢∨∪∩□⊃∈+-]*\)\|\(\[\\]\)\|…\)\(\^[+-]\)\?" contained

syn region QuantifierBlock matchgroup=Quantifier start=/\(∀\|∃\|ı\|λ\|μ\)/ matchgroup=QuantifierEnd end="[.]"

syn keyword SigillisedKeyword %let
syn keyword SigillisedKeyword %thing
syn keyword SigillisedKeyword %end
syn keyword SigillisedKeyword %use
syn keyword SigillisedKeyword %import
syn keyword SigillisedKeyword %edge
syn keyword SigillisedKeyword %force
syn keyword SigillisedKeyword %return
syn keyword SigillisedKeyword %thunk

hi def link SigillisedKeyword Statement
hi def link LiteralLabelStart Label
hi def link LiteralLabelBody Label
hi def link ParenError Error
hi def link ParenError2 Error
hi def link CurlyError Error
hi def link SquareError Error
hi def link CurlyError2 Error
hi def link AngleError Error
hi def link AngleError2 Error
hi def link SquareError2 Error
hi def link QuoteString String
hi def link SquareString String
hi def link contiguousword String
hi def link hashBang Comment
hi def link Comment SemicolonComment

hi def link LiteralStringEscape SpecialChar

syn sync lines=300

let b:current_syntax="kropaya"
