local lush = require('lush')
local hsl = lush.hsl

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    Normal            { bg = hsl(250, 29, 8), fg = hsl(199, 51, 79) }, -- Normal text
    LineNr         { fg = hsl(230, 20, 30) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    LineNrAbove    { fg = hsl(230, 20, 30) }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow    { fg = hsl(230, 20, 30) }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLine     { bg = hsl(250, 27, 12) }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLineNr   { fg = hsl(199, 51, 79) }, -- Error messages on the command line
    StatusLine     { bg = hsl(250, 30, 11) }, -- Status line of current window
    Whitespace     { fg = hsl(230, 20, 30) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator   { fg = hsl(250, 30, 15) }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    Visual         { fg = hsl(199, 73, 73), bg = hsl(199, 71, 10) }, -- Visual mode selection
    ErrorMsg       { fg = hsl(0, 57, 76) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.

    Directory      { fg = hsl(199, 70, 72) }, -- Directory names (and other special names in listings)

    Comment        { fg = hsl(230, 20, 50) }, -- Any comment
    Constant       { fg = hsl(164, 60, 68) }, -- (*) Any constant
    String         { fg = hsl(21, 56, 81) }, --   A string constant: "this is a string"
    Identifier     { fg = hsl(18, 63, 82) }, -- (*) Any variable name
    Function       { fg = hsl(20, 22, 89) }, --   Function name (also: methods for classes)
    Statement      { fg = hsl(289, 64, 72) }, -- (*) Any statement
    Operator       { fg = hsl(289, 64, 72) }, --   "sizeof", "+", "*", etc.
    PreProc        { fg = hsl(289, 64, 72) }, -- (*) Generic Preprocessor
    Type           { fg = hsl(20, 71, 72) }, -- (*) int, long, char, etc.

    -- ColorColumn    { }, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor         { }, -- Character under the cursor
    -- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- DiffAdd        { }, -- Diff mode: Added line |diff.txt|
    -- DiffChange     { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete     { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    -- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    -- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- NormalFloat    { }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    -- Pmenu          { }, -- Popup menu: Normal item.
    -- PmenuSel       { }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    -- Question       { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search         { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    -- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    -- Special        { }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    -- SignColumn     { }, -- Column where |signs| are displayed

    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    sym"@operator"          { fg= "red" }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { fg = hsl(18, 63, 82) }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag

    xmlTag { fg = hsl(230, 20, 60) },
    xmlTagName { fg = hsl(289, 64, 72) },
    xmlAttrib  { fg = hsl(201, 71, 65) },
    xmlAttribPunct  { fg = hsl(230, 20, 60) },
    xmlEqual { fg = hsl(230, 20, 60) },
    xmlString  { fg = hsl(21, 56, 81) },

    htmlTitle { fg = hsl(199, 51, 79)  },
    htmlH1 { fg = hsl(199, 51, 79)  },
    htmlH2 { fg = hsl(199, 51, 79)  },
    htmlH3 { fg = hsl(199, 51, 79)  },
    htmlH4 { fg = hsl(199, 51, 79)  },
    htmlH5 { fg = hsl(199, 51, 79)  },
    htmlH6 { fg = hsl(199, 51, 79)  },
    htmlArg { fg = hsl(201, 71, 65)  },
    htmlTag { fg = hsl(230, 20, 60) },
    htmlEndTag { fg = hsl(230, 20, 60) },
    htmlString  { fg = hsl(21, 56, 81) },
    htmlTagN { fg = hsl(289, 64, 72) },
    htmlTagName { fg = hsl(289, 64, 72) },
    htmlComment { fg = hsl(230, 20, 50) },

    javaNumber { fg = hsl(164, 60, 68) },
    javaString  { fg = hsl(21, 56, 81) },
    javaAnnotation { fg = hsl(0, 57, 76) },
    javaSpecialChar { fg = hsl(0, 88, 76) },
    javaBoolean { fg = hsl(289, 64, 72) },
    javaExternal { fg = hsl(289, 64, 72) },
    javaConstant { fg = hsl(289, 64, 72) },
    javaOperator { fg = hsl(289, 64, 72) },
    javaType { fg = hsl(289, 64, 72) },
    javaTypedef { fg = hsl(289, 64, 72) },
    javaClassDecl { fg = hsl(289, 64, 72) },
    javaStorageClass { fg = hsl(289, 64, 72) },
    javaConceptKind { fg = hsl(289, 64, 72) },
    javaLineComment { fg = hsl(230, 20, 50) },
    javaCommentTitle { fg = hsl(230, 20, 50) },
    javaDocComment { fg = hsl(230, 20, 50) },
    javaParen { fg = hsl(230, 20, 60) },
    javaParen1 { fg = hsl(230, 20, 60) },
    javaParen2 { fg = hsl(230, 20, 60) },
    javaParenT { fg = hsl(230, 20, 60) },
    javaParenT1 { fg = hsl(230, 20, 60) },
    javaParenT2 { fg = hsl(230, 20, 60) },
    javaMethodRef { fg = hsl(230, 20, 60) },
    javaDocTags { fg = hsl(230, 20, 35) },
    javaDocLinkTag { fg = hsl(230, 20, 35) },
    javaDocSeeTag1 { fg = hsl(230, 20, 35) },
    javaDocSeeTag2 { fg = hsl(230, 20, 35) },
    javaDocSeeTag3 { fg = hsl(230, 20, 35) },
    javaDocSeeTagParam { fg = hsl(230, 20, 35) },
    javaDocParam { fg = hsl(230, 20, 35) },
    javaDocCodeTag { fg = hsl(230, 20, 35) },

    sym"@lsp.type.modifier.java" { fg = hsl(289, 64, 72) },
    sym"@lsp.type.method.java" { fg = hsl(199, 70, 72) },
    sym"@lsp.type.property.java" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.parameter.java" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.variable.java" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.recordComponent.java" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.enumMember.java" { fg = hsl(199, 51, 79) },
    sym"@lsp.type.annotationMember.java" { fg = hsl(199, 51, 79) },
    sym"@lsp.type.interface.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.enum.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.class.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.record.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.typeParameter.java" { fg = hsl(332, 71, 72) },
    sym"@lsp.type.annotation.java" { fg = hsl(0, 57, 76) },
    sym"@lsp.type.namespace.java" { fg = hsl(199, 51, 79) },
    sym"@lsp.mod.importDeclaration.java" { fg = hsl(199, 51, 79) },
    sym"@lsp.mod.constructor.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.typemod.interface.declaration.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.typemod.class.declaration.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.typemod.record.declaration.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.typemod.interface.importDeclaration.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.typemod.class.importDeclaration.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.typemod.record.importDeclaration.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.typemod.enum.importDeclaration.java" { fg = hsl(201, 71, 65) },
    sym"@lsp.typemod.annotation.importDeclaration.java" { fg = hsl(0, 57, 76) },

    typescriptProp { fg = hsl(199, 51, 79) },
    typescriptDOMFormProp { fg = hsl(199, 51, 79) },
    typescriptDOMDocProp { fg = hsl(199, 51, 79) },
    typescriptBOMLocationMethod { fg = hsl(199, 51, 79) },
    typescriptFileReaderProp { fg = hsl(199, 51, 79) },
    typescriptXHRProp { fg = hsl(199, 51, 79) },
    typescriptVariableDeclaration { fg = hsl(199, 51, 79) },
    typescriptOptionalMark { fg = hsl(199, 51, 79) },
    typescriptIdentifierName { fg = hsl(199, 51, 79) },
    typescriptNumber { fg = hsl(164, 60, 68) },
    typescriptSpecial { fg = hsl(0, 88, 76) },
    typescriptString { fg = hsl(21, 56, 81) },
    typescriptStringLiteralType { fg = hsl(21, 56, 81) },
    typescriptTemplate { fg = hsl(21, 56, 81) },
    typescriptGlobalMethod { fg = hsl(199, 70, 72) },
    typescriptConstructSignature { fg = hsl(199, 70, 72) },
    typescriptTypeReference { fg = hsl(201, 71, 65) },
    typescriptTypeBlock { fg = hsl(201, 71, 65) },
    typescriptDefaultImportName { fg = hsl(201, 71, 65) },
    typescriptBOM { fg = hsl(201, 71, 65) },
    typescriptExport { fg = hsl(289, 64, 72) },
    typescriptBoolean { fg = hsl(289, 64, 72) },
    typescriptAmbientDeclaration { fg = hsl(289, 64, 72) },
    typescriptModule { fg = hsl(289, 64, 72) },
    typescriptMember { fg = hsl(289, 64, 72) },
    typescriptImport { fg = hsl(289, 64, 72) },
    typescriptOperator { fg = hsl(289, 64, 72) },
    typescriptAccessibilityModifier { fg = hsl(289, 64, 72) },
    typescriptCall { fg = hsl(289, 64, 72) },
    typescriptStatementKeyword { fg = hsl(289, 64, 72) },
    typescriptAsyncFuncKeyword { fg = hsl(289, 64, 72) },
    typescriptConditional { fg = hsl(289, 64, 72) },
    typescriptClassStatic { fg = hsl(289, 64, 72) },
    typescriptIdentifier { fg = hsl(289, 64, 72) },
    typescriptVariable { fg = hsl(289, 64, 72) },
    typescriptPredefinedType { fg = hsl(289, 64, 72) },
    typescriptCastKeyword { fg = hsl(289, 64, 72) },
    typescriptDocTags { fg = hsl(289, 64, 72) },
    typescriptDocNotation { fg = hsl(289, 64, 72) },
    typescriptNull { fg = hsl(289, 64, 72) },
    typescriptTry { fg = hsl(289, 64, 72) },
    typescriptExceptions { fg = hsl(289, 64, 72) },
    typescriptObjectLiteral { fg = hsl(230, 20, 60) },
    typescriptBinaryOp { fg = hsl(230, 20, 60) },
    typescriptTernaryOp { fg = hsl(230, 20, 60) },
    typescriptUnaryOp { fg = hsl(230, 20, 60) },
    typescriptFuncCallArg { fg = hsl(230, 20, 60) },
    typescriptUnion { fg = hsl(230, 20, 60) },
    typescriptProperty { fg = hsl(230, 20, 60) },
    typescriptEndColons { fg = hsl(230, 20, 60) },
    typescriptFuncTypeArrow { fg = hsl(230, 20, 60) },
    typescriptDefaultParam { fg = hsl(230, 20, 60) },
    typescriptArrowFunc { fg = hsl(230, 20, 60) },
    typescriptArrowFuncDef { fg = hsl(230, 20, 60) },
    typescriptAssign { fg = hsl(230, 20, 60) },
    typescriptBraces { fg = hsl(230, 20, 60) },
    typescriptParens { fg = hsl(230, 20, 60) },
    typescriptDecorator { fg = hsl(230, 20, 60) },
    typescriptFuncComma { fg = hsl(230, 20, 60) },
    typescriptTypeAnnotation { fg = hsl(230, 20, 60) },
    typescriptTypeBrackets { fg = hsl(230, 20, 60) },
    typescriptTypeBracket { fg = hsl(230, 20, 60) },
    typescriptDotNotation { fg = hsl(230, 20, 60) },
    typescriptGlobalNumberDot { fg = hsl(230, 20, 60) },
    typescriptGlobalMathDot { fg = hsl(230, 20, 60) },
    typescriptGlobalConsoleDot { fg = hsl(230, 20, 60) },
    typescriptGlobalJSONDot { fg = hsl(230, 20, 60) },
    typescriptObjectColon { fg = hsl(230, 20, 60) },
    typescriptObjectSpread { fg = hsl(230, 20, 60) },
    typescriptMagicComment { fg = hsl(230, 20, 60) },
    typescriptTemplateSB { fg = hsl(230, 20, 60) },
    typescriptDocComment { fg = hsl(230, 20, 50) },

    sym"@lsp.type.property.typescript" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.parameter.typescript" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.variable.typescript" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.enumMember.typescript" { fg = hsl(199, 51, 79)  },
    sym"@lsp.mod.enumMember.typescript" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.member.typescript" { fg = hsl(199, 70, 72) },
    sym"@lsp.type.function.typescript" { fg = hsl(199, 70, 72) },
    sym"@lsp.type.class.typescript" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.interface.typescript" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.type.typescript" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.enum.typescript" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.namespace.typescript" { fg = hsl(289, 64, 72) },
    sym"@lsp.type.typeParameter.typescript" { fg = hsl(332, 71, 72) },

    javaScriptProp { fg = hsl(199, 51, 79) },
    javaScriptDOMFormProp { fg = hsl(199, 51, 79) },
    javaScriptDOMDocProp { fg = hsl(199, 51, 79) },
    javaScriptBOMLocationMethod { fg = hsl(199, 51, 79) },
    javaScriptFileReaderProp { fg = hsl(199, 51, 79) },
    javaScriptXHRProp { fg = hsl(199, 51, 79) },
    javaScriptVariableDeclaration { fg = hsl(199, 51, 79) },
    javaScriptOptionalMark { fg = hsl(199, 51, 79) },
    javaScriptIdentifierName { fg = hsl(199, 51, 79) },
    javaScriptNumber { fg = hsl(164, 60, 68) },
    javaScriptEmbed { fg = hsl(0, 57, 76) },
    javaScriptSpecial { fg = hsl(0, 88, 76) },
    javaScriptRegexpString { fg = hsl(0, 88, 76) },
    javaScriptStringS { fg = hsl(21, 56, 81) },
    javaScriptStringD { fg = hsl(21, 56, 81) },
    javaScriptStringT { fg = hsl(21, 56, 81) },
    javaScriptTemplate { fg = hsl(21, 56, 81) },
    javaScriptGlobalMethod { fg = hsl(199, 70, 72) },
    javaScriptTypeReference { fg = hsl(201, 71, 65) },
    javaScriptTypeBlock { fg = hsl(201, 71, 65) },
    javaScriptBOM { fg = hsl(201, 71, 65) },
    javaScriptReserved { fg = hsl(289, 64, 72) },
    javaScriptExport { fg = hsl(289, 64, 72) },
    javaScriptBoolean { fg = hsl(289, 64, 72) },
    javaScriptAmbientDeclaration { fg = hsl(289, 64, 72) },
    javaScriptModule { fg = hsl(289, 64, 72) },
    javaScriptMember { fg = hsl(289, 64, 72) },
    javaScriptImport { fg = hsl(289, 64, 72) },
    javaScriptOperator { fg = hsl(289, 64, 72) },
    javaScriptAccessibilityModifier { fg = hsl(289, 64, 72) },
    javaScriptCall { fg = hsl(289, 64, 72) },
    javaScriptStatementKeyword { fg = hsl(289, 64, 72) },
    javaScriptAsyncFuncKeyword { fg = hsl(289, 64, 72) },
    javaScriptConditional { fg = hsl(289, 64, 72) },
    javaScriptClassStatic { fg = hsl(289, 64, 72) },
    javaScriptIdentifier { fg = hsl(289, 64, 72) },
    javaScriptVariable { fg = hsl(289, 64, 72) },
    javaScriptPredefinedType { fg = hsl(289, 64, 72) },
    javaScriptCastKeyword { fg = hsl(289, 64, 72) },
    javaScriptDocTags { fg = hsl(289, 64, 72) },
    javaScriptDocNotation { fg = hsl(289, 64, 72) },
    javaScriptNull { fg = hsl(289, 64, 72) },
    javaScriptTry { fg = hsl(289, 64, 72) },
    javaScriptExceptions { fg = hsl(289, 64, 72) },
    javaScriptObjectLiteral { fg = hsl(230, 20, 60) },
    javaScriptBinaryOp { fg = hsl(230, 20, 60) },
    javaScriptTernaryOp { fg = hsl(230, 20, 60) },
    javaScriptUnaryOp { fg = hsl(230, 20, 60) },
    javaScriptFuncCallArg { fg = hsl(230, 20, 60) },
    javaScriptUnion { fg = hsl(230, 20, 60) },
    javaScriptProperty { fg = hsl(230, 20, 60) },
    javaScriptEndColons { fg = hsl(230, 20, 60) },
    javaScriptFuncTypeArrow { fg = hsl(230, 20, 60) },
    javaScriptDefaultParam { fg = hsl(230, 20, 60) },
    javaScriptArrowFunc { fg = hsl(230, 20, 60) },
    javaScriptArrowFuncDef { fg = hsl(230, 20, 60) },
    javaScriptAssign { fg = hsl(230, 20, 60) },
    javaScriptBraces { fg = hsl(230, 20, 60) },
    javaScriptParens { fg = hsl(230, 20, 60) },
    javaScriptDecorator { fg = hsl(230, 20, 60) },
    javaScriptFuncComma { fg = hsl(230, 20, 60) },
    javaScriptTypeAnnotation { fg = hsl(230, 20, 60) },
    javaScriptTypeBrackets { fg = hsl(230, 20, 60) },
    javaScriptTypeBracket { fg = hsl(230, 20, 60) },
    javaScriptDotNotation { fg = hsl(230, 20, 60) },
    javaScriptGlobalNumberDot { fg = hsl(230, 20, 60) },
    javaScriptGlobalMathDot { fg = hsl(230, 20, 60) },
    javaScriptGlobalConsoleDot { fg = hsl(230, 20, 60) },
    javaScriptGlobalJSONDot { fg = hsl(230, 20, 60) },
    javaScriptObjectColon { fg = hsl(230, 20, 60) },
    javaScriptObjectSpread { fg = hsl(230, 20, 60) },
    javaScriptMagicComment { fg = hsl(230, 20, 60) },
    javaScriptTemplateSB { fg = hsl(230, 20, 60) },
    javaScriptDocComment { fg = hsl(230, 20, 50) },

    sym"@lsp.type.namespace.javascript" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.property.javascript" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.parameter.javascript" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.variable.javascript" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.enumMember.javascript" { fg = hsl(199, 51, 79)  },
    sym"@lsp.mod.enumMember.javascript" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.member.javascript" { fg = hsl(199, 70, 72) },
    sym"@lsp.type.function.javascript" { fg = hsl(199, 70, 72) },
    sym"@lsp.type.class.javascript" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.interface.javascript" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.type.javascript" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.enum.javascript" { fg = hsl(201, 71, 65) },

    jsonQuote { fg = hsl(230, 20, 60) },
    jsonKeywordMatch { fg = hsl(230, 20, 60) },
    jsonStringMatch { fg = hsl(230, 20, 60) },
    jsonBraces { fg = hsl(230, 20, 60) },
    jsonNoise { fg = hsl(230, 20, 60) },
    jsonString { fg = hsl(21, 56, 81) },
    jsonBoolean { fg = hsl(201, 71, 65) },
    jsonKeyword { fg = hsl(289, 64, 72) },
    jsonEscape { fg = hsl(0, 88, 76) },
    jsonNumber { fg = hsl(164, 60, 68) },
    jsonComment { fg = hsl(230, 20, 50) },

    cssProp { fg = hsl(199, 51, 79) },
    cssCustomProp { fg = hsl(244, 45, 73) },
    cssMediaType { fg = hsl(199, 51, 79) },
    cssAttributeSelector { fg = hsl(199, 51, 79) },
    cssKeyframeProp { fg = hsl(289, 64, 72) },
    cssTagName { fg = hsl(289, 64, 72) },
    cssPseudoClass { fg = hsl(289, 54, 80) },
    cssPseudoClassId { fg = hsl(289, 54, 80) },
    cssVendor { fg = hsl(289, 54, 80) },
    cssStringQ { fg = hsl(21, 56, 81) },
    cssStringQQ { fg = hsl(21, 56, 81) },
    cssURL { fg = hsl(21, 56, 81) },
    cssNoise { fg = hsl(230, 20, 60) },
    cssBraces { fg = hsl(230, 20, 60) },
    cssFunctionComma { fg = hsl(230, 20, 60) },
    cssAttrComma { fg = hsl(230, 20, 60) },
    cssAtKeyword { fg = hsl(230, 20, 60) },
    cssAtRule { fg = hsl(230, 20, 60) },
    cssAtRuleLogical { fg = hsl(230, 20, 60) },
    cssSelectorOp { fg = hsl(230, 20, 60) },
    cssSelectorOp2 { fg = hsl(230, 20, 60) },
    cssFunction { fg = hsl(199, 70, 72) },
    cssFunctionName { fg = hsl(199, 70, 72) },
    cssAttr { fg = hsl(0, 57, 76) },
    cssFontAttr { fg = hsl(0, 57, 76) },
    cssUnicodeEscape { fg = hsl(0, 88, 76) },
    cssIdentifier { fg = hsl(201, 71, 65) },
    cssClassName { fg = hsl(201, 71, 65) },
    cssClassNameDot { fg = hsl(201, 71, 65) },
    cssValueLength { fg = hsl(164, 60, 68) },
    cssValueNumber { fg = hsl(164, 60, 68) },
    cssColor { fg = hsl(164, 60, 68) },
    cssUnitDecorators { fg = hsl(164, 40, 56) },
    cssComment { fg = hsl(230, 20, 50) },

    sassVariable { fg = hsl(199, 51, 79) },
    sassAmpersand { fg = hsl(289, 64, 72) },
    sassFunction { fg = hsl(199, 70, 72) },
    sassMixinName { fg = hsl(199, 70, 72) },
    sassClass { fg = hsl(201, 71, 65) },
    sassClassChar { fg = hsl(201, 71, 65) },
    sassId { fg = hsl(201, 71, 65) },
    sassIdChar { fg = hsl(201, 71, 65) },
    sassInclude { fg = hsl(230, 20, 60) },
    sassMixing { fg = hsl(230, 20, 60) },
    sassMixin { fg = hsl(230, 20, 60) },
    sassMedia { fg = hsl(230, 20, 60) },
    sassMediaOperators { fg = hsl(230, 20, 60) },
    sassControl { fg = hsl(230, 20, 60) },
    sassControlLine { fg = hsl(230, 20, 60) },
    scssComment { fg = hsl(230, 20, 50) },

    yamlBlockMappingKey { fg = hsl(289, 64, 72) },
    yamlInteger { fg = hsl(164, 60, 68) },
    yamlBool { fg = hsl(201, 71, 65) },
    yamlFlowString { fg = hsl(21, 56, 81) },
    yamlDocumentStart { fg = hsl(230, 20, 60) },
    yamlBlockScalarHeader { fg = hsl(230, 20, 60) },
    yamlBlockCollectionItemStart { fg = hsl(230, 20, 60) },
    yamlBlockMappingDelimiter { fg = hsl(230, 20, 60) },
    yamlFlowStringDelimiter { fg = hsl(230, 20, 60) },
    yamlFlowIndicator { fg = hsl(230, 20, 60) },
    yamlFlowCollection { fg = hsl(230, 20, 60) },
    yamlComment { fg = hsl(230, 20, 50) },

    shConditional { fg = hsl(289, 64, 72) },
    shNumber { fg = hsl(164, 60, 68) },
    shFunction { fg = hsl(199, 70, 72) },
    shDeref { fg = hsl(201, 71, 65) },
    shDerefSimple { fg = hsl(201, 71, 65) },
    shRedir { fg = hsl(0, 57, 76) },
    shSpecialDQ { fg = hsl(0, 88, 76) },
    shVariable { fg = hsl(199, 51, 79) },
    shOption { fg = hsl(199, 51, 79) },
    shQuote { fg = hsl(21, 56, 81) },
    shSingleQuote { fg = hsl(21, 56, 81) },
    shCommandSubBQ { fg = hsl(21, 56, 81) },
    shDoubleQuote { fg = hsl(21, 56, 81) },
    shTestDoubleQuote { fg = hsl(21, 56, 81) },
    shVarAssign { fg = hsl(230, 20, 60) },
    shArithRegion { fg = hsl(230, 20, 60) },
    shRange { fg = hsl(230, 20, 60) },
    shOperator { fg = hsl(230, 20, 60) },
    shTestOpr { fg = hsl(230, 20, 60) },
    shComment { fg = hsl(230, 20, 50) },

    CmpItemMenu { fg = hsl(230, 20, 60) },
    CmpItemKindKeyword { fg = hsl(250, 29, 8), bg = hsl(289, 64, 72) },
    CmpItemKindConstructor { fg = hsl(250, 29, 8), bg = hsl(0, 88, 76) },
    CmpItemKindModule { fg = hsl(250, 29, 8), bg = hsl(230, 20, 60) },
    CmpItemKindVariable { fg = hsl(250, 29, 8), bg = hsl(199, 51, 79) },
    CmpItemKindField { fg = hsl(250, 29, 8), bg = hsl(199, 51, 79) },
    CmpItemKindProperty { fg = hsl(250, 29, 8), bg = hsl(199, 51, 79) },
    CmpItemKindConstant { fg = hsl(250, 29, 8), bg = hsl(199, 51, 79) },
    CmpItemKindFolder { fg = hsl(250, 29, 8), bg = hsl(244, 45, 73) },
    CmpItemKindFile { fg = hsl(250, 29, 8), bg = hsl(244, 69, 85) },
    CmpItemKindFunction { fg = hsl(250, 29, 8), bg = hsl(199, 70, 72) },
    CmpItemKindMethod { fg = hsl(250, 29, 8), bg = hsl(199, 70, 72) },
    CmpItemKindClass { fg = hsl(250, 29, 8), bg = hsl(201, 71, 65) },
    CmpItemKindStruct { fg = hsl(250, 29, 8), bg = hsl(201, 71, 65) },
    CmpItemKindInterface { fg = hsl(250, 29, 8), bg = hsl(164, 60, 68) },
    CmpItemKindEnum { fg = hsl(250, 29, 8), bg = hsl(0, 57, 76) },
    CmpItemKindEnumMember { fg = hsl(250, 29, 8), bg = hsl(21, 56, 81) },
    CmpItemKindSnippet { fg = hsl(250, 29, 8), bg = hsl(230, 80, 60) },

    cStructure { fg = hsl(289, 64, 72) },
    cDefine { fg = hsl(289, 64, 72) },
    cType { fg = hsl(289, 64, 72) },
    cTypedef { fg = hsl(289, 64, 72) },
    cStorageClass { fg = hsl(289, 64, 72) },
    cNumber { fg = hsl(164, 60, 68) },
    cFormat { fg = hsl(0, 57, 76) },
    cSpecial { fg = hsl(0, 88, 76) },
    cParenError { bg = Normal.bg, fg = Normal.fg }, -- Normal text
    cErrInParen { bg = Normal.bg, fg = Normal.fg }, -- Normal text

    sym"@lsp.type.class.c" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.enum.c" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.function.c" { fg = hsl(199, 70, 72) },
    sym"@lsp.type.macro.c" { fg = hsl(244, 45, 73) },
    sym"@lsp.type.enumMember.c" { fg = hsl(244, 69, 85) },
    sym"@lsp.type.property.c" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.variable.c" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.parameter.c" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.operator.c" { fg = hsl(199, 51, 79)  },

    sym"@lsp.type.class.cpp" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.enum.cpp" { fg = hsl(201, 71, 65) },
    sym"@lsp.type.function.cpp" { fg = hsl(199, 70, 72) },
    sym"@lsp.type.macro.cpp" { fg = hsl(244, 45, 73) },
    sym"@lsp.type.enumMember.cpp" { fg = hsl(244, 69, 85) },
    sym"@lsp.type.property.cpp" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.variable.cpp" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.parameter.cpp" { fg = hsl(199, 51, 79)  },
    sym"@lsp.type.operator.cpp" { fg = hsl(199, 51, 79)  },
}
end)

return theme
