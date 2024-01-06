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
	--{{packer manager
  { "wbthomason/packer.nvim" },
	--}}
	--file tree{{
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = "kyazdani42/nvim-web-devicons",
	},
	--}}
	--themes{{
  { "ful1e5/onedark.nvim" },
  { "rmehri01/onenord.nvim", lazy="false" },
	{ "catppuccin/nvim", name = "catppuccin" },
  { "morhetz/gruvbox" },
  { "ghifarit53/tokyonight-vim" },
  { "xiyaowong/nvim-transparent" },
	--}}
	--welcome page{{
  { "goolord/alpha-nvim" },
	--}}
	--align line{{
	{ "lukas-reineke/indent-blankline.nvim" },
	--}}
	--status bar{{
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
			lazy = true,
		},
	},
	--}}
	--tree-sitter{{
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	--}}
	--LSP{{
	--	use({ "neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer" })
	--}}
	--telescope{{
	{
		"nvim-telescope/telescope.nvim",
		-- tag = "0.1.0",
		--or                            , branch = '0.1.x',
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	--}}
	--null-ls{{
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = "nvim-lua/plenary.nvim",
	},
	--}}
	--cmp{{
	--use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
	--use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
	--use("hrsh7th/cmp-path") -- { name = 'path' }
	--use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
	--use("hrsh7th/nvim-cmp")
	-- vsnip
	--use("hrsh7th/cmp-vsnip") -- { name = 'vsnip' }
	--use("hrsh7th/vim-vsnip")
	--use("rafamadriz/friendly-snippets")
	--use({
	--	"SirVer/ultisnips",
	--	dependencies = { { "honza/vim-snippets", rtp = "." } },
	--})
	--use("quangnguyen30192/cmp-nvim-ultisnips")
	{
		"max397574/better-escape.nvim",
		config = function() end,
	},
	-- lspkind
  { "onsails/lspkind-nvim" },
	--}}
	--code outline{{
	{ "liuchengxu/vista.vim" },
	--}
	--vim-tex{{
	{ "lervag/vimtex" },
	--}}
	--coc{{
	{ 
    "neoclide/coc.nvim",
		branch = "release",
	},
	--}}
	--comment {{
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	--}}
	--hop {{
	{
		"phaazon/hop.nvim",
		config = function()
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	},
	--}}
	--{{
	{
		"wakatime/vim-wakatime",
	},
  --}}
})
