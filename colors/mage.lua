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
