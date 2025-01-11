local M = {}

-- Base (One Half Dark–style)
M.bg       = "#282c34" -- One Half Dark background
M.fg       = "#dcdfe4" -- One Half Dark foreground
M.comment  = "#5c6370" -- Subtle, cool-toned comment

-- Accents (Tokyo Night–style)
M.red      = "#f7768e"
M.green    = "#9ece6a"
M.yellow   = "#e0af68"
M.blue     = "#7aa2f7"
M.purple   = "#ad8ee6"
M.cyan     = "#449dab"
M.orange   = "#ff9e64"  -- Replaces the old orange (#e57958) with Tokyo Night orange

-- “Bright” variants (used for Rainbow Delimiters or other emphasis)
M.bright_red     = "#ff5c57"
M.bright_orange  = "#ff9e64"  -- same as normal orange, but you could pick a brighter shade if you prefer
M.bright_yellow  = "#f9e2af"
M.bright_green   = "#b9f27c"
M.bright_blue    = "#5fd7ff"
M.bright_purple  = "#d18aff"
M.bright_cyan    = "#56d7c2"

-- UI helpers: selection, cursor line, gutter, etc.
M.selection  = "#434c5e" -- a bit lighter than the background
M.cursorline = "#3b4252"
M.gutter     = "#3b4252"

return M

