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
Color.new('deep_red',  '#300000')
Color.new('cursor_line', '#1e2229')

--
-- Groups
--

Group.new('Normal',       c.white,         c.black)
Group.new('Bold',         c.none,          c.none, b)
Group.new('Italic',       c.none,          c.none, i)
Group.new('VertSplit',    c.blue_grey_900, c.none)
Group.new('LineNr',       c.blue_grey_800, c.none, i)
Group.new('SignColumn',   c.blue_grey_500, c.none)
Group.new('MsgArea',      c.orange_900,    c.none, i)
Group.new('Visual',       c.cyan_100,      c.indigo_900)
Group.new('CursorLine',   c.none,          c.cursor_line)
Group.new('CursorLineNR', c.blue_grey_500, c.cursor_line)
Group.new('ColorColumn',  c.none,          c.cursor_line)

-- Standard

Group.new('Comment',     c.grey_600,        c.none, b + i)
Group.new('Identifier',  c.indigo_100,      c.none, no)
Group.new('Keyword',     c.light_blue_200,  c.none, no)
Group.new('Function',    c.light_green_400, c.none, no)
Group.new('String',      c.orange_200,      c.none, i)
Group.new('Conditional', c.red_300,         c.none, no)
Group.new('Operator',    c.teal_100,        c.none, no)
Group.new('Type',        c.deep_purple_100, c.none, no)

-- Go
Group.new('goFunction',     c.none,       c.none, b)

-- LSP
vim.api.nvim_command('highlight LspDiagnosticsUnderline gui=undercurl guisp=#ffd54f')
vim.api.nvim_command('highlight LspDiagnosticsUnderlineError gui=undercurl guisp=#f44336')

Group.new('LspDiagnosticsHint',    c.lime_500,   c.none, i)
Group.new('LspDiagnosticsWarning', c.orange_400, c.deep_red, i)
Group.new('LspDiagnosticsError',   c.red_500,    c.deep_red, i)

