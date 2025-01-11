-- 1) Clear highlights & reset syntax
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

-- 2) Set the scheme name
vim.g.colors_name = "mage"

-- 3) Enable true color
vim.opt.termguicolors = true

-- 4) Load the palette
local palette = require("mage.palette")

-- 5) Helper to define highlights
local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- 6) Example highlights
hl("Normal",   { fg = palette.fg, bg = palette.bg })
hl("Comment",  { fg = palette.comment, italic = true })
hl("String",   { fg = palette.green })
hl("Keyword",  { fg = palette.red, bold = true })
hl("Function", { fg = palette.blue })

-- Gutter, line numbers, etc.
hl("LineNr",        { fg = palette.gutter })
hl("CursorLine",    { bg = palette.cursorline })
hl("CursorLineNr",  { fg = palette.fg, bold = true })
hl("Visual",        { bg = palette.selection })

------------------------------------------------------------------------------
-- Treesitter Highlight Groups
------------------------------------------------------------------------------

-- Variables
hl("@variable",         { fg = palette.red })
hl("@variable.builtin", { fg = palette.cyan, italic = true })

-- Functions
hl("@function",         { fg = palette.blue })
hl("@function.call",    { fg = palette.blue })
hl("@function.builtin", { fg = palette.blue, bold = true })

-- Highlight parameters differently
hl("@parameter",         { fg = palette.yellow })

-- For properties in objects/classes
hl("@property",          { fg = palette.blue })

-- For fields (similar to properties, but can be used differently in some languages)
hl("@field",             { fg = palette.blue })

-- For methods (object-bound functions)
hl("@method",            { fg = palette.blue })

-- For classes or types
hl("@type",              { fg = palette.yellow, bold = true })
hl("@type.builtin",      { fg = palette.yellow, italic = true })

-- Constants
hl("@constant",          { fg = palette.cyan })
hl("@constant.builtin",  { fg = palette.cyan, italic = true })

-- Numbers, booleans, floats
hl("@number",            { fg = palette.yellow })
hl("@boolean",           { fg = palette.red, bold = true })
hl("@float",             { fg = palette.yellow })

-- Operators (+, -, * etc.)
hl("@operator",          { fg = palette.fg })

-- Control statements (if, else, while, for, etc.)
hl("@conditional",       { fg = palette.purple, bold = true })
hl("@repeat",            { fg = palette.purple, bold = true })
hl("@keyword.operator",  { fg = palette.red }) 
hl("@keyword.return",    { fg = palette.red, bold = true })

-- GitSigns
hl("GitSignsAdd",    { fg = palette.green })
hl("GitSignsChange", { fg = palette.yellow })
hl("GitSignsDelete", { fg = palette.red })

-- Telescope
hl("TelescopeBorder", { fg = palette.comment })
hl("TelescopePromptPrefix", { fg = palette.blue })
hl("TelescopeMatching", { fg = palette.purple, bold = true })

-- Now set the built-in terminal's ANSI color slots:
vim.g.terminal_color_0  = palette.bg
vim.g.terminal_color_1  = palette.red
vim.g.terminal_color_2  = palette.green
vim.g.terminal_color_3  = palette.yellow
vim.g.terminal_color_4  = palette.blue
vim.g.terminal_color_5  = palette.purple
vim.g.terminal_color_6  = palette.cyan
vim.g.terminal_color_7  = palette.fg
vim.g.terminal_color_8  = palette.comment
vim.g.terminal_color_9  = palette.red
vim.g.terminal_color_10 = palette.green
vim.g.terminal_color_11 = palette.yellow
vim.g.terminal_color_12 = palette.blue
vim.g.terminal_color_13 = palette.purple
vim.g.terminal_color_14 = palette.cyan
vim.g.terminal_color_15 = palette.fg

vim.g.terminal_color_background = palette.bg
vim.g.terminal_color_foreground = palette.fg
