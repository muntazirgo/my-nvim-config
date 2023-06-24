#!/usr/bin/env lua

require("code_runner").setup({
	-- choose default mode (valid term, tab, float, toggle, buf)
	mode = "toggle",
	-- Focus on runner window(only works on toggle, term and tab mode)
	focus = true,
	-- startinsert (see ':h inserting-ex')
	startinsert = false,
	term = {
		--  Position to open the terminal, this option is ignored if mode is tab
		position = "bot",
		-- window size, this option is ignored if tab is true
		size = 8,
	},
	float = {
		-- Window border (see ':h nvim_open_win')
		border = "none",

		-- Num from `0 - 1` for measurements
		height = 0.8,
		width = 0.8,
		x = 0.5,
		y = 0.5,

		-- Highlight group for floating window/border (see ':h winhl')
		border_hl = "FloatBorder",
		float_hl = "Normal",

		-- Transparency (see ':h winblend')
		blend = 0,
	},
	filetype_path = vim.fn.stdpath("data") .. "/lazy/code_runner.nvim/lua/code_runner/load_json.lua",
	-- put here the commands by filetype
	filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "cd $dir && python3 -u $fileName",
		sh = "bash",
		lua = "lua",
		c = "gcc $dir/$fileName && ./a.out",
		cpp = "g++ $dir/$fileName && ./a.out",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
	},
	-- project_path = vim.fn.stdpath("data")
	--  .. "/site/pack/packer/start/code_runner.nvim/lua/code_runner/project_manager.json",
	-- project = {},
})
