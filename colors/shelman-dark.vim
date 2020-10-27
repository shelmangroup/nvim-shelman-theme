lua << EOF

vim.g.colors_name = 'shelman-dark'

local black       = '#171717'
local gray        = '#808080'
local gray_dark   = '#353535'
local gray_darker = '#505050'
local gray_light  = '#c0c0c0'
local white       = '#ffffff'

local tan = '#f4c069'

local red       = '#ee4a59'
local red_dark  = '#b71c1c'
local red_light = '#FF8A65'

local orange       = '#ff8900'
local orange_light = '#FFECB3'

local yellow = '#f0df33'

local green_dark  = '#50de60'
local green       = '#9CCC65'
local green_light = '#a0ff70'

local blue     = '#7090ff'
local cyan     = '#fDD0E1'
local ice      = '#49a0f0'
local teal     = '#B2DFDB'
local turqoise = '#2bff99'

local magenta      = '#9FA8DA'
local magenta_dark = '#bb0099'
local pink         = '#ffa6ff'
local pink_light   = '#ffb7b7'
local purple       = '#9FA8DA'
local purple_light = '#af60af'

local FG   = 'fg'

local highlight_group_normal = {bg=black, fg=gray_light}

local highlight_groups = {
	--[[ 4.1. Text Analysis ]]
	Comment     = {fg=orange_light, style='bold,italic'},
	NonText     = {fg=gray_darker},
	EndOfBuffer = 'NonText',
	Whitespace  = 'NonText',

	--[[ 4.1.1. Literals]]
	Constant  = {fg=orange_light},
	String    = {fg=green, style='italic'},
	Character = {fg=red_light},
	Number    = {fg=pink_light},
	Boolean   = {fg=yellow},
	Float     = 'Number',

	--[[ 4.1.2. Identifiers]]
	Identifier = {fg=FG},
	-- Function   = {fg=purple, style={'undercurl', color=red}},
	Function   = {fg=purple, style='bold'},

	--[[ 4.1.3. Syntax]]
	Statement   = {fg=ice},
	Conditional = {fg=ice,      style='italic'},
	Repeat      = {fg=turqoise, style='bold'},
	Label       = {fg=pink,     style='italic'},
	Operator    = {fg=green_dark},
	Keyword     = {fg=teal},
	Exception   = {fg=red_light, style='bold'},
	Noise       = 'Delimiter',

	--[[ 4.1.4. Metatextual Information]]
	PreProc   = {fg=tan},
	Include   = {fg=green_light, style='nocombine'},
	Define    = {fg=blue,        style='nocombine'},
	Macro     = {fg=blue,        style='italic'},
	PreCondit = {fg=tan,         style='italic'},

	--[[ 4.1.5. Semantics]]
	Type         = {fg=tan},
	StorageClass = {fg=orange_light, style='bold'},
	Structure    = {fg=blue,         style='bold'},
	Typedef      = {fg=cyan,         style='italic'},

	--[[ 4.1.6. Edge Cases]]
	Special        = {fg=magenta,   style='bold'},
	SpecialChar    = {fg=red_light, style='italic'},
	SpecialKey     = 'Character',
	Tag            = 'Underlined',
	Delimiter      = {fg=white},
	SpecialComment = {fg=gray, style={'bold', 'nocombine'}},
	Debug          = 'WarningMsg',

	--[[ 4.1.7. Help Syntax]]
	Underlined        = {fg=turqoise, style='underline'},
	Ignore            = {fg=gray},
	-- Error             = {bg=red_dark, fg=orange_light, style='italic'},
	Error             = {bg={"#312121"}, fg=red, style='italic'},
	Todo              = {fg=yellow,   style={'bold', 'underline'}},
	helpHyperTextJump = 'Underlined',
	helpSpecial       = 'Function',
	Hint              = {bg=magenta,    fg=black, style='bold'},
	Info              = {bg=pink_light, fg=black, style='bold'},
	Warning           = {bg=orange,     fg=black, style='bold'},

	--[[ 4.2... Editor UI  ]]
	--[[ 4.2.1. Status Line]]
	StatusLine       = {bg=gray_darker, fg=green_light},
	StatusLineNC     = {bg=gray_darker, fg=gray},
	StatusLineTerm   = 'StatusLine',
	StatusLineTermNC = 'StatusLineNC',

	--[[ 4.2.2. Separators]]
	VertSplit   = {fg=gray_darker},
	TabLine     = {bg=gray_darker, fg=FG},
	TabLineFill = {fg=FG},
	TabLineSel  = {bg=gray_darker, fg=FG, style='inverse'},
	Title       = {style='bold'},

	--[[ 4.2.3. Conditional Line Highlighting]]
	--Conceal={}
	CursorLine      = {bg="#1a2020"},
	CursorLineNr    = {bg='#1a2020', fg=yellow},
	debugBreakpoint = 'ErrorMsg',
	debugPC         = 'ColorColumn',
	LineNr          = {fg=gray_darker},
	QuickFixLine    = {bg=gray_darker},
	Visual          = {style='inverse'},
	VisualNOS       = {bg=gray_darker},

	--[[ 4.2.4. Popup Menu]]
	Pmenu      = {bg=gray_dark, fg=FG},
	PmenuSbar  = {bg=black},
	PmenuSel   = {fg=FG},
	PmenuThumb = {bg=white},
	WildMenu   = {},

	--[[ 4.2.5. Folds]]
	FoldColumn = {bg=gray_darker,             style='bold'},
	Folded     = {bg=purple_light,  fg=black, style='italic'},

	--[[ 4.2.6. Diffs]]
	DiffAdd    = {fg=green_dark, style='inverse'},
	DiffChange = {fg=yellow,     style='inverse'},
	DiffDelete = {fg=red,        style='inverse'},
	DiffText   = {style='inverse'},

	--[[ 4.2.7. Searching]]
	IncSearch  = {style='inverse'},
	Search     = {style={'underline', color=white}},
	MatchParen = {fg=green, style={'bold', 'underline'}},

	--[[ 4.2.8. Spelling]]
	SpellBad   = {style={'undercurl', color=red}},
	SpellCap   = {style={'undercurl', color=yellow}},
	SpellLocal = {style={'undercurl', color=green}},
	SpellRare  = {style={'undercurl', color=orange}},

	--[[ 4.2.9. Conditional Column Highlighting]]
	ColorColumn = {style='inverse'},
	SignColumn  = {},

	--[[ 4.2.10. Messages]]
	ErrorMsg   = {fg=red,          style='bold'},
	HintMsg    = {fg=magenta,      style='bold'},
	InfoMsg    = {fg=pink_light,   style='bold'},
	ModeMsg    = {fg=yellow},
	WarningMsg = {fg=orange,       style='bold'},
	Question   = {fg=orange_light, style='underline'},

	--[[ 4.2.11. LSP ]]
	LspDiagnosticsError = 'Error',
	LspDiagnosticsErrorFloating = 'ErrorMsg',
	LspDiagnosticsErrorSign = 'ErrorMsg',

	LspDiagnosticsWarning = 'Warning',
	LspDiagnosticsWarningFloating = 'WarningMsg',
	LspDiagnosticsWarningSign = 'WarningMsg',

	LspDiagnosticsHint = 'Hint',
	LspDiagnosticsHintFloating = 'HintMsg',
	LspDiagnosticsHintSign = 'HintMsg',

	LspDiagnosticsInformation = 'Info',
	LspDiagnosticsInformationFloating = 'InfoMsg',
	LspDiagnosticsInformationSign = 'InfoMsg',

	LspDiagnosticsUnderline = {style={'undercurl', color=white}},
	LspDiagnosticsUnderlineError = 'CocErrorHighlight',
	LspDiagnosticsUnderlineHint  = 'CocHintHighlight',
	LspDiagnosticsUnderlineInfo  = 'CocInfoHighlight',
	LspDiagnosticsUnderlineWarning = 'CocWarningHighlight',

	--[[ 4.2.12. Cursor ]]
	Cursor   = {style='inverse'},
	CursorIM = 'Cursor',
	CursorColumn = {bg=gray_dark},

	--[[ 4.2.13. Misc ]]
	Directory = {fg=ice, style='bold'},

	--[[ 4.3. Programming Languages
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]
	--[[ 4.3.1. C ]]
	cConstant    = 'Constant',
	cCustomClass = 'Type',

	--[[ 4.3.2. C++ ]]
	cppSTLexception = 'Exception',
	cppSTLnamespace = 'String',

	--[[ 4.3.3 C# ]]
	csBraces     = 'Delimiter',
	csClass      = 'Structure',
	csClassType  = 'Type',
	csContextualStatement = 'Conditional',
	csEndColon   = 'Delimiter',
	csGeneric    = 'Typedef',
	csInterpolation = 'Include',
	csInterpolationDelimiter = 'SpecialChar',
	csLogicSymbols  = 'Operator',
	csModifier   = 'Keyword',
	csNew        = 'Operator',
	csNewType    = 'Type',
	csParens     = 'Delimiter',
	csPreCondit  = 'PreProc',
	csRepeat     = 'Repeat',
	csStorage    = 'StorageClass',
	csUnspecifiedStatement = 'Statement',
	csXmlTag     = 'Define',
	csXmlTagName = 'Define',

	--[[ 4.3.4. CSS ]]
	cssBraces     = 'Delimiter',
	cssProp       = 'Keyword',
	cssSelectorOp = 'Operator',
	cssTagName    = 'Type',
	cssTagName    = 'htmlTagName',
	scssAmpersand = 'Special',
	scssAttribute = 'Label',
	scssBoolean   = 'Boolean',
	scssDefault   = 'Keyword',
	scssElse      = 'PreCondit',
	scssIf        = 'PreCondit',
	scssInclude   = 'Include',
	scssSelectorChar = 'Operator',
	scssSelectorName = 'Identifier',
	scssVariable  = 'Define',
	scssVariableAssignment = 'Operator',

	--[[ 4.3.5. Dart ]]
	dartLibrary = 'Statement',

	--[[ 4.3.6. dot ]]
	dotKeyChar = 'Character',
	dotType    = 'Type',

	--[[ 4.3.7. Go ]]
	goBlock                 = 'Delimiter',
	goBoolean               = 'Boolean',
	goBuiltins              = 'Operator',
	goField                 = 'Identifier',
	goFloat                 = 'Float',
	goFormatSpecifier       = 'Character',
	goFunction              = 'Function',
	goFunctionCall          = 'goFunction',
	goFunctionReturn        = {},
	goMethodCall            = 'goFunctionCall',
	goParamType             = 'goReceiverType',
	goPointerOperator       = 'SpecialChar',
	goPredefinedIdentifiers = 'Constant',
	goReceiver              = 'goBlock',
	goReceiverType          = 'goTypeName',
	goSameId                = {bg={"#263238"}},
	goSimpleParams          = 'goBlock',
	goType                  = 'Type',
	goTypeConstructor       = 'goFunction',
	goTypeName              = 'Type',
	goVarAssign             = 'Identifier',
	goVarDefs               = 'goVarAssign',

	--[[ 4.3.8. HTML ]]
	htmlArg     = 'Label',
	htmlBold    = {fg=gray_light, style='bold'},
	htmlTitle   = 'htmlBold',
	htmlEndTag  = 'htmlTag',
	htmlH1      = 'markdownH1',
	htmlH2      = 'markdownH2',
	htmlH3      = 'markdownH3',
	htmlH4      = 'markdownH4',
	htmlH5      = 'markdownH5',
	htmlH6      = 'markdownH6',
	htmlItalic  = {style='italic'},
	htmlSpecialTagName = 'Keyword',
	htmlTag     = 'Special',
	htmlTagN    = 'Typedef',
	htmlTagName = 'Type',

	--[[ 4.3.9. Java ]]
	javaClassDecl = 'Structure',

	--[[ 4.3.10. JavaScript ]]
	jsFuncBlock   = 'Function',
	jsObjectKey   = 'Type',
	jsReturn      = 'Keyword',
	jsVariableDef = 'Identifier',

	--[[ 4.3.11. JSON ]]
	jsonBraces = 'luaBraces',
	jsonKeywordMatch = 'Operator',
	jsonNull   = 'Constant',
	jsonQuote  = 'Delimiter',
	jsonString = 'String',
	jsonStringSQError = 'Exception',

	--[[ 4.3.12. Lua ]]
	luaBraces       = 'Structure',
	luaBrackets     = 'Delimiter',
	luaBuiltin      = 'Keyword',
	luaComma        = 'Delimiter',
	luaFuncArgName  = 'Identifier',
	luaFuncCall     = 'Function',
	luaFuncId       = 'luaNoise',
	luaFuncKeyword  = 'Type',
	luaFuncName     = 'Function',
	luaFuncParens   = 'Delimiter',
	luaFuncTable    = 'Structure',
	luaLocal        = 'Type',
	luaNoise        = 'Operator',
	luaParens       = 'Delimiter',
	luaSpecialTable = 'StorageClass',
	luaSpecialValue = 'Function',

	--[[ 4.3.12. Make ]]
	makeCommands   = 'Statment',
	makeSpecTarget = 'Type',

	--[[ 4.3.13. Markdown ]]
	markdownH1          = {fg=red, style='bold'},
	markdownH2          = {fg=orange, style='bold'},
	markdownH3          = {fg=yellow, style='bold'},
	markdownH4          = {fg=green_dark, style='bold'},
	markdownH5          = {fg=cyan, style='bold'},
	markdownH6          = {fg=purple_light, style='bold'},
	mkdBold             = 'SpecialComment',
	mkdCode             = 'Keyword',
	mkdCodeDelimiter    = 'mkdBold',
	mkdCodeStart        = 'mkdCodeDelimiter',
	mkdCodeEnd          = 'mkdCodeStart',
	mkdHeading          = 'Delimiter',
	mkdItalic           = 'mkdBold',
	mkdListItem         = 'Special',
	mkdRule             = 'Underlined',
	texMathMatcher      = 'Number',
	texMathZoneX        = 'Number',
	texMathZoneY        = 'Number',

	--[[ 4.3.20. Python ]]
	pythonBrackets        = 'Delimiter',
	pythonBuiltinFunc     = 'Operator',
	pythonBuiltinObj      = 'Type',
	pythonBuiltinType     = 'Type',
	pythonClass           = 'Structure',
	pythonClassParameters = 'pythonParameters',
	pythonDecorator       = 'PreProc',
	pythonDottedName      = 'Identifier',
	pythonError           = 'Error',
	pythonException       = 'Exception',
	pythonInclude         = 'Include',
	pythonIndentError     = 'pythonError',
	pythonLambdaExpr      = 'pythonOperator',
	pythonOperator        = 'Operator',
	pythonParam           = 'Identifier',
	pythonParameters      = 'Delimiter',
	pythonSelf            = 'Statement',
	pythonSpaceError      = 'pythonError',
	pythonStatement       = 'Statement',

	--[[ 4.3.21. Ruby ]]
	rubyClass                  = 'Structure',
	rubyDefine                 = 'Define',
	rubyInterpolationDelimiter = 'Delimiter',

	--[[ 4.3.22. Rust ]]
	rustKeyword   = 'Keyword',
	rustModPath   = 'Include',
	rustScopeDecl = 'Delimiter',
	rustTrait     = 'StorageClass',

	--[[ 4.3.23. Scala ]]
	scalaKeyword        = 'Keyword',
	scalaNameDefinition = 'Identifier',

	--[[ 4.3.24. shell ]]
	shDerefSimple = 'SpecialChar',
	shFunctionKey = 'Function',
	shLoop    = 'Repeat',
	shParen   = 'Delimiter',
	shQuote   = 'Delimiter',
	shSet     = 'Statement',
	shTestOpr = 'Debug',

	--[[ 4.3.25. Solidity ]]
	solBuiltinType  = 'Type',
	solContract     = 'Typedef',
	solContractName = 'Function',

	--[[ 4.3.26. TOML ]]
	tomlComment = 'Comment',
	tomlKey     = 'Label',
	tomlTable   = 'StorageClass',

	--[[ 4.3.27. VimScript ]]
	helpSpecial    = 'Special',
	vimFgBgAttrib  = 'Constant',
	vimHiCterm     = 'Label',
	vimHiCtermFgBg = 'vimHiCterm',
	vimHiGroup     = 'Typedef',
	vimHiGui       = 'vimHiCterm',
	vimHiGuiFgBg   = 'vimHiGui',
	vimHiKeyList   = 'Operator',
	vimOption      = 'Define',
	vimSetEqual    = 'Operator',

	--[[ 4.3.28. XML ]]
	xmlAttrib  = 'htmlArg',
	xmlEndTag  = 'xmlTag',
	xmlEqual   = 'Operator',
	xmlTag     = 'htmlTag',
	xmlTagName = 'htmlTagName',

	--[[ 4.3.29. SQL ]]
	sqlKeyword   = 'Keyword',
	sqlParen     = 'Delimiter',
	sqlSpecial   = 'Constant',
	sqlStatement = 'Statement',
	sqlParenFunc = 'Function',

	--[[ 4.3.30. dos INI ]]
	dosiniHeader = 'Title',

	--[[ 4.3.31. Crontab ]]
	crontabDay  = 'StorageClass',
	crontabDow  = 'String',
	crontabHr   = 'Number',
	crontabMin  = 'Float',
	crontabMnth = 'Structure',

	--[[ 4.3.32. PlantUML ]]
	plantumlColonLine = {},

	--[[ 4.4. Plugins
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]
	--[[ 4.4.1. ALE ]]
	ALEErrorSign   = 'ErrorMsg',
	ALEWarningSign = 'WarningMsg',

	--[[ 4.4.2. coc.nvim ]]
	CocErrorHighlight   = {style={'undercurl', color='red'}},
	CocHintHighlight    = {style={'undercurl', color='magenta'}},
	CocInfoHighlight    = {style={'undercurl', color='pink_light'}},
	CocWarningHighlight = {style={'undercurl', color='orange'}},
	CocErrorSign   = 'ALEErrorSign',
	CocHintSign    = 'HintMsg',
	CocInfoSign    = 'InfoMsg',
	CocWarningSign = 'ALEWarningSign',

	--[[ 4.4.2. vim-jumpmotion / vim-easymotion ]]
	EasyMotion = 'IncSearch',
	JumpMotion = 'EasyMotion',

	--[[ 4.4.4. vim-gitgutter / vim-signify ]]
	GitGutterAdd          = {fg=green},
	GitGutterChange       = {fg=yellow},
	GitGutterDelete       = {fg=red},
	GitGutterChangeDelete = {fg=orange},

	SignifySignAdd    = 'GitGutterAdd',
	SignifySignChange = 'GitGutterChange',
	SignifySignDelete = 'GitGutterDelete',
	SignifySignChangeDelete = 'GitGutterChangeDelete',

	--[[ 4.4.5. vim-indent-guides ]]
	IndentGuidesOdd  = {bg=gray_darker},
	IndentGuidesEven = {bg=gray_dark},

	--[[ 4.4.7. NERDTree ]]
	NERDTreeCWD = 'Label',
	NERDTreeUp  = 'Operator',
	NERDTreeDir = 'Directory',
	NERDTreeDirSlash = 'Delimiter',
	NERDTreeOpenable = 'NERDTreeDir',
	NERDTreeClosable = 'NERDTreeOpenable',
	NERDTreeExecFile = 'Function',
	NERDTreeLinkTarget = 'Tag',

	--[[ 4.4.8. nvim-treesitter ]]
	TSConstBuiltin = 'Constant',
	TSConstructor  = 'Typedef',
	TSFuncBuiltin  = 'Function',
	TSStringEscape = 'Character',
	TSStringRegex  = 'SpecialChar',
	TSURI = 'Tag',
	TSVariableBuiltin = 'Identifier',
}

require('shelman')(
	highlight_group_normal,
	highlight_groups
)

-- vim: ft=lua
EOF
