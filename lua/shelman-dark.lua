-- Name:         Shelman
-- Description:  Shelman Dark Theme
-- Author:       Daniel Lundin <daniel@arity.se>
-- Maintainer:   Daniel Lundin <daniel@arity.se>
-- Website:      https://shelman.io
-- License:      Apache License 2.0

vim.g.colors_name = 'shelman-dark'

local Color, c, Group, g, s = require("colorbuddy").setup()
local b = s.bold
local i = s.italic
local n = s.inverse
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local sto = s.standout
local no = s.NONE

--
-- Colors
--

require("material-colors")

-- Terminal colors

Color.new('black',     '#171a23')
Color.new('white',     c.blue_grey_100:to_rgb())
Color.new('red',       c.red_300:to_rgb())
Color.new('pink',      c.pink_300:to_rgb())
Color.new('green',     c.green_300:to_rgb())
Color.new('yellow',    c.yellow_300:to_rgb())
Color.new('blue',      c.blue_300:to_rgb())
Color.new('aqua',      c.green_200:to_rgb())
Color.new('cyan',      c.cyan_200:to_rgb())
Color.new('purple',    c.deep_purple_200:to_rgb())
Color.new('violet',    c.purple_200:to_rgb())
Color.new('orange',    c.orange_200:to_rgb())
Color.new('brown',     c.brown_300:to_rgb())
Color.new('seagreen',  c.teal_200:to_rgb())
Color.new('turquoise', c.teal_200:to_rgb())

-- Extra colors
Color.new('deep_red',  '#170000')

--
-- Groups
--

Group.new('Normal', c.white, c.black)
Group.new('Comment', c.blue_grey_200, c.bg, b + i)

-- LSP
vim.api.nvim_command('highlight LspDiagnosticsUnderline gui=undercurl guisp=#ff0000')
vim.api.nvim_command('highlight LspDiagnosticsUnderlineError gui=undercurl guisp=#ff0000')

Group.new('LspDiagnosticsWarning', c.red_500, c.deep_red, i)
Group.new('LspDiagnosticsError', c.red_500, nil, i)

