-- Name:         Shelman
-- Description:  Shelman Light Theme
-- Author:       Daniel Lundin <daniel@arity.se>
-- Maintainer:   Daniel Lundin <daniel@arity.se>
-- Website:      https://shelman.io
-- License:      Apache License 2.0

vim.g.colors_name = 'shelman-light'

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
Color.new('white',     c.white:to_rgb())
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
Color.new('cursor_line', '#fcfaed')
Color.new('margin', '#f2f2f2')

--
-- Groups
--

Group.new('Normal',       c.black,         c.white)
Group.new('Bold',         c.none,          c.none, b)
Group.new('Italic',       c.none,          c.none, i)
Group.new('VertSplit',    c.blue_grey_900, c.none)
Group.new('LineNr',       c.blue_grey_100, c.none, b + i)
Group.new('SignColumn',   c.blue_grey_500, c.none)
Group.new('MsgArea',      c.orange_900,    c.none, i)
Group.new('Visual',       c.none,          c.light_blue_50)
Group.new('Search',       c.none,          c.yellow_a200)
Group.new('CursorLine',   c.none,          c.cursor_line)
Group.new('CursorLineNR', c.blue_grey_500, c.none, b + i)
Group.new('ColorColumn',  c.none,          c.cursor_line)

-- Standard

Group.new('Comment',     c.brown_400,       c.none, b + i)
Group.new('Identifier',  c.indigo_500,      c.none, no)
Group.new('Keyword',     c.light_blue_500,  c.none, no)
Group.new('Function',    c.green_700,       c.none, no)
Group.new('Label',       c.orange_600,      c.none, i)
Group.new('String',      c.deep_orange_a700,        c.none, i)
Group.new('Conditional', c.red_300,         c.none, no)
Group.new('Operator',    c.blue_a200,       c.none, no)
Group.new('PreProc',     c.teal_500,        c.none, no)
Group.new('Special',     c.deep_purple_400, c.none, no)
Group.new('Statement',   c.blue_grey_800,   c.none, no)
Group.new('Type',        c.deep_purple_500, c.none, no)

-- Indent guides
Group.new('Indent1',  c.red_100, c.none, i)
Group.new('Indent2',  c.green_100, c.none, i)
Group.new('Indent3',  c.blue_100, c.none, i)
Group.new('Indent4',  c.orange_100, c.none, i)
Group.new('IndentSpace',  c.grey_100, c.none, i)

-- Go
Group.new('goFunction',     c.none,       c.none, b)
Group.new('goSameId',       c.none,       c.none, ul)

-- LSP
vim.api.nvim_command('highlight LspDiagnosticsUnderline gui=undercurl guisp=#ffd54f')
vim.api.nvim_command('highlight LspDiagnosticsUnderlineError cterm=undercurl guisp=#f44336')

Group.new('LspDiagnosticsHint',    c.lime_500,   c.none, i)
Group.new('LspDiagnosticsWarning', c.orange_400, c.deep_red, i)
Group.new('LspDiagnosticsError',   c.red_500,    c.deep_red, i)
Group.new('LspDiagnosticsDefaultError', c.red_a700,    c.red_50, i)

vim.fn.sign_define("LspDiagnosticsSignError", {text = "XX", numhl = "LspDiagnosticsDefaultError"})

-- UI
Group.new('PMenu',       c.none,  c.blue_100)
Group.new('PMenuSel',    c.white, c.blue_700)
Group.new('NormalFloat', c.none,  c.yellow_100)
Group.new('FloatBorder', c.orange_300,  c.yellow_100)
