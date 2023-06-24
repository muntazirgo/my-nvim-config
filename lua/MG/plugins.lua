local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- required stuff
  { "nvim-lua/plenary.nvim" },

  -- alpha
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    lazy = true,
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    -- run = ":TSUpdate",
    cmd = {
      "TSInstall",
      "TSUninstall",
      "TSUpdate",
      "TSUpdateSync",
      "TSInstallInfo",
      "TSInstallSync",
      "TSInstallFromGrammar",
    },
    event = "User FileOpened",
  },
  -- code runner
  {
    "CRAG666/code_runner.nvim",
    requires = "nvim-lua/plenary.nvim",
  },

  -- which key
  { "folke/which-key.nvim",           lazy = true },
  -- lualine
  { "nvim-lualine/lualine.nvim",      lazy = true },
  -- toggleterm
  { "akinsho/toggleterm.nvim",        lazy = true },
  -- project plugin
  { "ahmedkhalf/project.nvim",        lazy = true },

  -- cmp plugins
  { "hrsh7th/nvim-cmp" },        -- The completion plugin
  { "hrsh7th/cmp-buffer" },      -- buffer completions
  { "hrsh7th/cmp-path" },        -- path completions
  { "saadparwaiz1/cmp_luasnip" }, -- snippet completions
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-nvim-lua" },
  { "hrsh7th/cmp-cmdline" },

  -- snippets
  { "L3MON4D3/LuaSnip" },            --snippet engine
  { "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use

  -- LSP
  { "neovim/nvim-lspconfig" },          -- enable LSP
  { "williamboman/nvim-lsp-installer" }, -- simple to use language server installer
  { "jose-elias-alvarez/null-ls.nvim" }, -- for formatters and linters
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
  },

  -- Telescope
  { "nvim-telescope/telescope.nvim" },

  -- Git
  { "lewis6991/gitsigns.nvim" },

  -- Colorschemes
  -- onedark colorscheme
  { "navarasu/onedark.nvim" },
  { "folke/tokyonight.nvim" },
  { "LunarVim/darkplus.nvim" },
  { "marko-cerovac/material.nvim" },
  { "sainnhe/gruvbox-material" },
  -- use("andersevenrud/nordic.nvim")
  -- use("LunarVim/Colorschemes")

  -- Autopairs, integrates with both cmp and treesitter
  { "windwp/nvim-autopairs" },

  -- Comment Plugin
  { "numToStr/Comment.nvim" },

  -- Buffer Line
  { "akinsho/bufferline.nvim" },

  { "kyazdani42/nvim-tree.lua" },

  { "kyazdani42/nvim-web-devicons" },
  { "mattn/emmet-vim" },
  { "NvChad/nvim-colorizer.lua" },
})
