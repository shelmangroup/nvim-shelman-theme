local vim = vim

-- Clear the highlighting.
vim.cmd('hi clear')

-- Disable automatic coloring for the IndentGuides plugin.
vim.g.indent_guides_auto_colors = 0

-- If the syntax has been enabled, reset it.
if vim.fn.exists('syntax_on') then vim.cmd('syntax reset') end

-- These are constants for the indexes in the colors that were defined before.
local NONE = "NONE"

-- Get the color value of a color variable, or "NONE" as a default.
local function get(color)
	if type(color) == 'string' then
		return color
	else
		return NONE
	end
end

-- Add the 'blend' parameter to some highlight command, if there is one.
local function blend(command, attributes) -- {{{ †
	if attributes.blend then -- There is a value for the `highlight-blend` field.
		command[#command + 1] = ' blend='..attributes.blend
	end
end --}}} ‡

local function colorize(command, attributes)
	command[#command + 1] =
		' guibg='..get(attributes.bg)
		..' guifg='..get(attributes.fg)
	blend(command, attributes)
end

-- This function appends `selected_attributes` to the end of `highlight_cmd`.
local function stylize(command, style, color)
	command[#command + 1] = ' gui='..style

	if color then -- There is an undercurl color.
		command[#command + 1] = ' guisp='..get(color)
	end
end

-- Generate a `:highlight` command from a group and some attributes.
local function highlight(highlight_group, attributes) -- {{{ †
	-- The base highlight command
	local highlight_cmd = {'hi! ', highlight_group}

	-- Take care of special instructions for certain background colors.
	if attributes[vim.o.background] then
		attributes.__index = attributes
	attributes = setmetatable(attributes[vim.o.background], attributes)
	end

	-- Determine if there is a highlight link, and if so, assign it.
	local link = (type(attributes) == 'string' and attributes)
		or attributes.link

	if link then -- `highlight_group` is a link to another group.
		highlight_cmd[3] = highlight_cmd[2]..' '
		highlight_cmd[2] = 'link '
		highlight_cmd[4] = link
	else -- The `highlight_group` is uniquely defined.
		colorize(highlight_cmd, attributes)

		local style = attributes.style or NONE
		if type(style) == 'table' then
			-- Concat all of the entries together with a comma between before styling.
			stylize(highlight_cmd, table.concat(style, ','), style.color)
		else -- The style is just a single entry.
			stylize(highlight_cmd, style)
		end
	end

	vim.cmd(table.concat(highlight_cmd))
end --}}} ‡

return function(Normal, highlights)
	-- Highlight the baseline.
	highlight('Normal', Normal)

	-- Highlight everything else.
	for highlight_group, attributes in pairs(highlights) do
		highlight(highlight_group, attributes)
	end
end
