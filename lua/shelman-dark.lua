-- Name:         Shelman
-- Description:  Shelman Dark Theme
-- Author:       Daniel Lundin <daniel@arity.se>
-- Maintainer:   Daniel Lundin <daniel@arity.se>
-- Website:      https://shelman.io
-- License:      Apache License 2.0

vim.g.colors_name = 'shelman-dark'

require("material-colors")

local Color, c, Group, g, s = require("colorbuddy").setup()
local b = s.bold
local i = s.italic
local n = s.inverse
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local sto = s.standout
local no = s.NONE

-- Color.new('bg', '#242f35')
Color.new('bg', '#171a23')
Color.new('fg', '#f2fdf7')
Color.new('deep_red', '#330000')

Group.new('Normal', c.fg, c.bg)
Group.new('Comment', c.blue_grey_200, c.bg, b + i)

-- LSP
vim.api.nvim_command('highlight LspDiagnosticsUnderline gui=undercurl guisp=#ff0000')
vim.api.nvim_command('highlight LspDiagnosticsUnderlineError gui=undercurl guisp=#ff0000')

Group.new('LspDiagnosticsWarning', c.red_500, c.deep_red, i)
Group.new('LspDiagnosticsError', c.red_500, nil, i)

