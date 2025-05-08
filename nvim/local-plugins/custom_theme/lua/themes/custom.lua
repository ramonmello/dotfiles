-- lua/themes/alacritty.lua
-- Tema personalizado baseado nas cores do seu Alacritty, agora com suporte a transparência

local M = {}

-- opções padrão
M.opts = {
  transparent = false,
}

-- cores do Alacritty
local c = {
  bg             = "#0e1128", fg            = "#f4e4c9",
  black          = "#1a1a1a", red           = "#f78a62",
  green          = "#44c0c3", yellow        = "#f4a5c3",
  blue           = "#a382ff", magenta       = "#f4a5c3",
  cyan           = "#44c0c3", white         = "#f4e4c9",
  bright_black   = "#3d3d3d", bright_red    = "#ff9a7a",
  bright_green   = "#6bcdcf", bright_yellow = "#f6d3e0",
  bright_blue    = "#bba9ff", bright_magenta= "#f6c4d6",
  bright_cyan    = "#90dadb", bright_white  = "#ffffff",
  sel_bg         = "#f4e4c9", sel_fg        = "#0e1128",
  cursor_bg      = "#f4a5c3", cursor_fg     = "#0e1128",
}

-- Aplica Highlight Groups
function M.apply()
  local bg = M.opts.transparent and "NONE" or c.bg
  local hl = vim.api.nvim_set_hl

  -- áreas principais
  hl(0, "Normal",       { fg = c.fg,       bg = bg })
  hl(0, "NormalNC",     { fg = c.bright_black, bg = bg })
  hl(0, "SignColumn",   { bg = bg })
  hl(0, "Folded",       { fg = c.bright_black, bg = bg })
  hl(0, "EndOfBuffer",  { fg = c.fg,       bg = bg })
  hl(0, "CursorLine",   { bg = M.opts.transparent and "NONE" or c.bright_black })
  hl(0, "Visual",       { fg = c.sel_fg,   bg = c.sel_bg })
  hl(0, "Cursor",       { fg = c.cursor_fg, bg = c.cursor_bg })

  -- status e floats
  hl(0, "StatusLine",   { fg = c.fg,       bg = bg })
  hl(0, "StatusLineNC", { fg = c.bright_black, bg = bg })
  hl(0, "NormalFloat",  { bg = bg })
  hl(0, "FloatBorder",  { fg = c.fg,       bg = bg })

  -- menu de completions
  hl(0, "Pmenu",        { fg = c.fg,       bg = M.opts.transparent and "NONE" or c.bright_black })
  hl(0, "PmenuSel",     { fg = c.sel_fg,   bg = c.sel_bg })

  -- destaques de sintaxe
  hl(0, "Comment",      { fg = c.bright_black, italic = true })
  hl(0, "Constant",     { fg = c.cyan })
  hl(0, "String",       { fg = c.green })
  hl(0, "Identifier",   { fg = c.yellow })
  hl(0, "Statement",    { fg = c.blue })
  hl(0, "Operator",     { fg = c.magenta })
  hl(0, "Keyword",      { fg = c.red })
  hl(0, "Type",         { fg = c.magenta })
  hl(0, "Special",      { fg = c.red })
  hl(0, "Title",        { fg = c.blue,     bold = true })
  hl(0, "Error",        { fg = c.red,      bold = true })
  hl(0, "WarningMsg",   { fg = c.yellow,   bold = true })
end

-- Inicializa o tema com opções
function M.setup(opts)
  M.opts = vim.tbl_deep_extend("force", M.opts, opts or {})
  M.apply()
end

-- Alterna transparência
function M.toggle()
  M.opts.transparent = not M.opts.transparent
  M.apply()
end

return M