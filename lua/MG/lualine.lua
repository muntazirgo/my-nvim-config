-- Author: MuntazirGo

-- Dont error out
local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

-- local lualine = require('lualine')

-- Color table for highlights
-- stylua: ignore
local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

local conditions = {
	buffer_not_empty = function()
		return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
	end,
	hide_in_width = function()
		return vim.fn.winwidth(0) > 80
	end,
	check_git_workspace = function()
		local filepath = vim.fn.expand("%:p:h")
		local gitdir = vim.fn.finddir(".git", filepath .. ";")
		return gitdir and #gitdir > 0 and #gitdir < #filepath
	end,
}

-- Config
local config = {
	options = {
		-- Disable sections and component separators
		component_separators = "",
		section_separators = "",
		theme = "onedark",
		-- theme = {
		-- We are going to use lualine_c an lualine_x as left and
		-- right section. Both are highlighted by c theme .  So we
		-- are just setting default looks o statusline
		--   normal = { c = { fg = colors.fg, bg = colors.bg } },
		--   inactive = { c = { fg = colors.fg, bg = colors.bg } },
		-- },
	},
	sections = {
		-- these are to remove the defaults
		lualine_a = {},
		lualine_b = {},
		lualine_y = {},
		lualine_z = {},
		-- These will be filled later
		lualine_c = {},
		lualine_x = {},
	},
	inactive_sections = {
		-- these are to remove the defaults
		lualine_a = {},
		lualine_b = {},
		lualine_y = {},
		lualine_z = {},
		lualine_c = {},
		lualine_x = {},
	},
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
	table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
	table.insert(config.sections.lualine_x, component)
end

-- ins_left {
--   function()
--     return '▊'
--   end,
--   color = { fg = colors.blue },
--   padding = { left = 0, right = 0 }, -- We don't need space before this
-- }
-- MODE --
ins_left({
	-- just a bar
	-- function()
	--return '▊'
	-- end,

	-- Full mode name
	"mode",
	-- fmt = string.lower,
	color = function()
		-- auto change color according to neovims mode
		local mode_color = {
			n = colors.green, -- normal mode
			i = colors.blue, -- insert mode
			v = colors.magenta, -- visual mode
			[""] = colors.magenta, -- visual line mode
			V = colors.magenta, -- visual block mode
			c = colors.yellow, -- command mode (search mode)
			no = colors.red,
			s = colors.orange,
			S = colors.orange,
			[""] = colors.orange,
			ic = colors.yellow,
			R = colors.red,
			Rv = colors.red,
			cv = colors.red,
			ce = colors.red,
			r = colors.cyan,
			rm = colors.cyan,
			["r?"] = colors.cyan,
			["!"] = colors.red,
			t = colors.red,
		}
		return { fg = colors.bg, bg = mode_color[vim.fn.mode()], gui = "bold" }
	end,
	padding = { left = 1, right = 1 }, -- We don't need space before this
})

-- BRANCH --
ins_left({
	"branch",
	icon = "שׂ",
	color = { fg = colors.violet, gui = "bold" },
})

-- FILENAME --
ins_left({
	"filename",
	cond = conditions.buffer_not_empty,
	color = { fg = colors.magenta, gui = "bold" },
})

-- Python Venv --
function env_cleanup(venv)
	if string.find(venv, "/") then
		local final_venv = venv
		for w in venv:gmatch("([^/]+)") do
			final_venv = w
		end
		venv = final_venv
	end
	return venv
end

local python_env = function()
	if vim.bo.filetype == "python" then
		local venv = os.getenv("CONDA_DEFAULT_ENV") or os.getenv("VIRTUAL_ENV")
		if venv then
			return string.format("  (%s)", env_cleanup(venv))
		end
	end
	return ""
end
ins_left({ python_env, color = { fg = colors.green, gui = "bold" }, cond = conditions.hide_in_width })

-- diff_source --
local function diff_source()
	local gitsigns = vim.b.gitsigns_status_dict
	if gitsigns then
		return {
			added = gitsigns.added,
			modified = gitsigns.changed,
			removed = gitsigns.removed,
		}
	end
end

ins_left({
	"diff",
	source = diff_source,
	symbols = { added = "  ", modified = " ", removed = " " },
	diff_color = {
		added = { fg = colors.green },
		modified = { fg = colors.yellow },
		removed = { fg = colors.red },
	},
	cond = nil,
})

-- Right Sections --
-- diagnostics --
ins_right({
	"diagnostics",
	sources = { "nvim_diagnostic" },
	symbols = { error = " ", warn = " ", info = " ", hint = " " },
	diagnostics_color = {
		color_error = { fg = colors.red },
		color_warn = { fg = colors.yellow },
		color_info = { fg = colors.cyan },
	},
	cond = conditions.hide_in_width,
})
-- treesitter --
ins_right({
	function()
		return ""
	end,
	color = function()
		local buf = vim.api.nvim_get_current_buf()
		local ts = vim.treesitter.highlighter.active[buf]
		return { fg = ts and not vim.tbl_isempty(ts) and colors.green or colors.red }
	end,
	cond = conditions.hide_in_width,
})

ins_right({
	-- Lsp server name .
	function()
		local msg = "No Active Lsp"
		local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
		local clients = vim.lsp.get_active_clients()
		if next(clients) == nil then
			return msg
		end
		for _, client in ipairs(clients) do
			local filetypes = client.config.filetypes
			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
				return "[" .. client.name .. "]"
			end
		end

		return msg
	end,
	-- icon = ' LSP:',
	color = { fg = "#ffffff", gui = "bold" },
})

-- location --
ins_right({
	"location",
	icon = "",
	color = { fg = colors.fg, gui = "bold" },
})

-- filesize --
ins_right({
	-- filesize component
	"filesize",
	icon = "",
	color = { fg = colors.orange, gui = "bold" },
	cond = conditions.buffer_not_empty,
})

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
-- ins_left {
--   function()
--     return '%='
--   end,
-- }

-- Add components to right sections
ins_right({
	"o:encoding", -- option component same as &encoding in viml
	fmt = string.upper, -- I'm not sure why it's upper case either ;)
	cond = conditions.hide_in_width,
	color = { fg = colors.green, gui = "bold" },
})

ins_right({
	"fileformat",
	fmt = string.upper,
	icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
	color = { fg = colors.green, gui = "bold" },
})

-- cool function for progress
local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
	-- return "%#SLProgress#" .. chars[index] .. "%*"
end
ins_right({ progress, color = { fg = colors.yellow, gui = "bold" } })

-- ins_right {
--   function()
--     return '▊'
--   end,
--   color = { fg = colors.blue },
--   padding = { left = 1 },
-- }
-- Now don't forget to initialize lualine
lualine.setup(config)
