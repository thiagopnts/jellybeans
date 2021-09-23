--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

local lush = require("lush")
local hsl = lush.hsl

local background = hsl(0, 0, 8)
local foreground = hsl(60, 31, 87)
local grey = hsl(0, 0, 20)
local grey2 = hsl(0, 0, 25)
local grey3 = hsl(0, 0, 53)
local grey4 = hsl(288, 4, 25)
local cadet_blue = hsl(210, 11, 72)
local regent_grey = hsl(210, 8, 60)
local silver = hsl(0, 0, 78)
local alto = hsl(0, 0, 94)
local morning_glory = hsl(203, 52, 71)
local ship_cove = hsl(219, 33, 63)
local hoki = hsl(201, 20, 50)
local perano = hsl(210, 68, 82)
local greenish = hsl(53, 53, 69)
local mantis = hsl(102, 43, 52)
local costa_del_sol = hsl(80, 33, 30)
local green_smoke = hsl(78, 29, 55)
local highland = hsl(102, 21, 52)
local wewak = hsl(336, 73, 78)
local cocoa_brown = hsl(330, 20, 16)
local kindagreen = hsl(202, 47, 32)
local raw_sienna = hsl(14, 58, 55)
local goldenrod = hsl(40, 93, 73)
local koromiko = hsl(33, 100, 70)
local old_brick = hsl(0, 64, 35)
local dark_blue = hsl(240, 100, 44)
local casal = hsl(172, 43, 31)
local biloba_flower = hsl(257, 62, 76)
local ripe_plum = hsl(291, 100, 19)

local theme =
  lush(
  function()
    return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    IndentBlanklineChar {fg = grey},
    Comment      { fg = grey, gui="italic" }, -- any comment
    ColorColumn  { fg = background }, -- used for the columns set with 'colorcolumn'
    Conceal      { fg = morning_glory }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { fg = background, bg = morning_glory}, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { fg = grey }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { CursorColumn }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = greenish }, -- directory names (and other special names in listings)
    DiffAdd      { fg = mantis }, -- diff mode: Added line |diff.txt|
    DiffChange   { fg = kindagreen}, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = raw_sienna }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg = morning_glory }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { fg = raw_sienna }, -- error messages on the command line
    VertSplit    { fg = grey }, -- the column separating vertically split windows
    -- Folded       { }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { }, -- column where |signs| are displayed
    IncSearch    { bg = goldenrod, fg = background }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr       { fg = grey, bg = background}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = LineNr.fg.li(50), bg = LineNr.bg.li(5) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { fg = goldenrod, bg = goldenrod.da(50) }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { }, -- |more-prompt|
    NonText      {fg = background }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = foreground, bg = background }, -- normal text
    NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    -- Preprocessor
    Pmenu        { fg = goldenrod, bg = background.li(5) }, -- Popup menu: normal item.
    PmenuSel     { fg = background.li(10), bg = goldenrod }, -- Popup menu: selected item.
    PmenuSbar    { }, -- Popup menu: scrollbar.
    PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg = mantis }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { bg = grey3 }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search {fg = wewak, bg = cocoa_brown}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey {fg = grey2, bg = grey3}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad {bg = old_brick}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap {bg = dark_blue}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal {bg = casal}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare {bg = ripe_plum}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine {fg = background, bg = alto}, -- status line of current window
    StatusLineNC {fg = foreground, bg = grey4}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine {fg = background, bg = cadet_blue}, -- tab pages line, not active tab page label
    TabLineFill {fg = regent_grey}, -- tab pages line, where there are no labels
    TabLineSel {fg = background, bg = alto}, -- tab pages line, active tab page label
    Title {fg = mantis}, -- titles for output from ":set all", ":autocmd" etc.
    Visual {bg = grey2}, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   {fg = goldenrod }, -- warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu {fg = wewak, bg = cocoa_brown}, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant {fg = raw_sienna}, -- (preferred) any constant
    String {fg = green_smoke}, --   a string constant: "this is a string"
    StringDelimiter {fg = costa_del_sol},
    -- Character      { }, --  a character constant: 'c', '\n'
    -- Number         { }, --   a number constant: 234, 0xff
    -- Boolean        { }, --  a boolean constant: TRUE, false
    -- Float          { }, --    a floating point constant: 2.3e10

    Identifier {fg = biloba_flower}, -- (preferred) any variable name
    Function {fg = goldenrod}, -- function name (also: methods for classes)

    Statement {fg = ship_cove}, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    Operator {fg = morning_glory}, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc        { fg = morning_glory }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type {fg = koromiko}, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    Structure {fg = morning_glory}, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        { fg = highland }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    Delimiter {fg = hoki}, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error {bg = old_brick}, -- (preferred) any erroneous construct

    Todo {fg = silver}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references
    --
    FloatBorder { fg = grey3 },
    LspFloatWinBorder { fg = grey3 },

    LspDiagnosticsDefaultError           { fg = old_brick }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { fg = goldenrod }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError       { fg = old_brick }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              { LspDiagnosticsDefaultError }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            { fg = goldenrod, bg = background }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               {fg = perano }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

    -- Telescope
    TelescopeBorder { fg = koromiko },
    TelescopeSelectionCaret { fg = biloba_flower},
    TelescopeSelection { fg = goldenrod },
    TelescopeMatching { fg = raw_sienna },

    -- NvimTree
--NvimTreeSymlink
--NvimTreeEmptyFolderName
--NvimTreeExecFile
--NvimTreeOpenedFile
--NvimTreeSpecialFile
--NvimTreeImageFile
--NvimTreeMarkdownFile
--
--LspDiagnosticsError
--LspDiagnosticsWarning
--LspDiagnosticsInformation
--LspDiagnosticsHint
--
--NvimTreeLicenseIcon
--NvimTreeYamlIcon
--NvimTreeTomlIcon
--NvimTreeGitignoreIcon
--NvimTreeJsonIcon
--
--NvimTreeLuaIcon
--NvimTreePythonIcon
--NvimTreeShellIcon
--NvimTreeJavascriptIcon
--NvimTreeCIcon
--NvimTreeReactIcon
--NvimTreeHtmlIcon
--NvimTreeRustIcon
--NvimTreeVimIcon
--NvimTreeTypescriptIcon
--
--NvimTreeGitStaged
--NvimTreeGitMerge
--NvimTreeGitRenamed
--NvimTreeGitNew
--NvimTreeGitDeleted
--
--There are also links to normal bindings to style the tree itself.

--    NvimTreeFileStaged { NvimTreeFileDirty },
--    NvimTreeFileMerge { NvimTreeFileDirty },

--    NvimTreeFileRenamed { NvimTreeFileDirty },

--    NvimTreeFileNew { NvimTreeFileDirty },

--    NvimTreeFileDeleted { NvimTreeFileDirty },
    NvimTreeFolderIcon {fg = koromiko },
    NvimTreeFolderName {fg = goldenrod},
    NvimTreeOpenedFolderName {fg = koromiko },
    NvimTreeIndentMarker {fg = perano },
    NvimTreeVertSplit {fg = grey, bg = background},
    NvimTreeRootFolder {fg = biloba_flower},
    NvimTreeNormal {fg = perano},
    NvimTreeFileDirty {NvimTreeFolderIcon},
--    NvimTreeStatuslineNc {},
    }
  end
)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
