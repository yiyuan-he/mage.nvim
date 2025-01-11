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

-- 6) Base UI groups
hl("Normal",       { fg = palette.fg, bg = palette.bg })
hl("Comment",      { fg = palette.comment, italic = true })
hl("String",       { fg = palette.green })
hl("Keyword",      { fg = palette.red, bold = true })
hl("Function",     { fg = palette.blue })
hl("LineNr",       { fg = palette.gutter })
hl("CursorLine",   { bg = palette.cursorline })
hl("CursorLineNr", { fg = palette.fg, bold = true })
hl("Visual",       { bg = palette.selection })

------------------------------------------------------------------------------
-- Treesitter Highlight Groups
------------------------------------------------------------------------------

-- Strings
hl("@string",          { fg = palette.green })
hl("@string.regex",    { fg = palette.green, italic = true })
hl("@string.escape",   { fg = palette.red, bold = true })
hl("@string.special",  { fg = palette.purple })

-- Characters
hl("@character",          { fg = palette.green })
hl("@character.special",  { fg = palette.purple, italic = true })

-- Booleans
hl("@boolean",            { fg = palette.red, bold = true })

-- Numbers
hl("@number",             { fg = palette.yellow })
hl("@number.float",       { fg = palette.yellow, bold = true })

-- Constants
hl("@constant",           { fg = palette.cyan })
hl("@constant.builtin",   { fg = palette.cyan, italic = true })
hl("@constant.macro",     { fg = palette.red })

-- Variables
-- NOTE: Using the “foreground” color for normal variables can reduce red overload
hl("@variable",           { fg = palette.purple })
hl("@variable.builtin",   { fg = palette.red, italic = true })

-- Functions
hl("@function",           { fg = palette.blue, bold = true }) -- definitions
hl("@function.call",      { fg = palette.blue })              -- calls
hl("@function.builtin",   { fg = palette.blue, italic = true })

-- Parameters, fields, etc.
hl("@parameter",          { fg = palette.yellow })
hl("@property",           { fg = palette.blue })
hl("@field",              { fg = palette.blue })
hl("@method",             { fg = palette.blue })

-- Types
hl("@type",               { fg = palette.yellow, bold = true })
hl("@type.builtin",       { fg = palette.yellow, italic = true })

-- Operators (+, -, * etc.)
hl("@operator",           { fg = palette.fg })

-- Control statements (if, else, while, for, etc.)
hl("@conditional",        { fg = palette.purple, bold = true })
hl("@repeat",             { fg = palette.purple, bold = true })
hl("@keyword.operator",   { fg = palette.red })
hl("@keyword.return",     { fg = palette.red, bold = true })

------------------------------------------------------------------------------
-- Plugins
------------------------------------------------------------------------------

hl("GitSignsAdd",         { fg = palette.green })
hl("GitSignsChange",      { fg = palette.yellow })
hl("GitSignsDelete",      { fg = palette.red })

hl("TelescopeBorder",        { fg = palette.comment })
hl("TelescopePromptPrefix",  { fg = palette.blue })
hl("TelescopeMatching",      { fg = palette.purple, bold = true })


hl("RainbowDelimiterRed",     { fg = palette.red })
hl("RainbowDelimiterYellow",  { fg = palette.yellow })
hl("RainbowDelimiterBlue",    { fg = palette.blue })
hl("RainbowDelimiterOrange",  { fg = palette.orange })
hl("RainbowDelimiterGreen",   { fg = palette.green })
hl("RainbowDelimiterViolet",  { fg = palette.purple })
hl("RainbowDelimiterCyan",    { fg = palette.cyan })

------------------------------------------------------------------------------
-- Terminal Colors
------------------------------------------------------------------------------

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
