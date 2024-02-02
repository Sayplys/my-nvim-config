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
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  config = function()
		  vim.cmd[[colorscheme tokyonight]]
	  end
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",},
  { "nvim-treesitter/playground" },
  { "theprimeagen/harpoon" },
  { "mbbill/undotree" },
  { "tpope/vim-fugitive" },
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  {'williamboman/mason.nvim',
   lazy = false,
   config = true,
  },
  {"williamboman/mason-lspconfig.nvim"}
})

