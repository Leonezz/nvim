return require("packer").startup(function(use)
	--{{packer manager
	use("wbthomason/packer.nvim")
	--}}
	--file tree{{
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	--}}
	--thames{{
	use("ful1e5/onedark.nvim")
	use("rmehri01/onenord.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("morhetz/gruvbox")
	use("ghifarit53/tokyonight-vim")
	use("xiyaowong/nvim-transparent")
	--}}
	--welcome page{{
	use("goolord/alpha-nvim")
	--}}
	--align line{{
	use("lukas-reineke/indent-blankline.nvim")
	--}}
	--status bar{{
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	--}}
	--tree-sitter{{
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	--}}
	--LSP{{
	use({ "neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer" })
	--}}
	--telescope{{
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		--or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	--}}
	--null-ls{{
	use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
	--}}
	--cmp{{
	use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
	use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
	use("hrsh7th/cmp-path") -- { name = 'path' }
	use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
	use("hrsh7th/nvim-cmp")
	-- vsnip
	use("hrsh7th/cmp-vsnip") -- { name = 'vsnip' }
	use("hrsh7th/vim-vsnip")
	use("rafamadriz/friendly-snippets")
	use({
		"SirVer/ultisnips",
		requires = { { "honza/vim-snippets", rtp = "." } },
	})
	use("quangnguyen30192/cmp-nvim-ultisnips")
	use({
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup({
				mapping = { "jk", "jj", "kj", "kk", "hh" },
			})
		end,
	})
	-- lspkind
	use("onsails/lspkind-nvim")
	--}}
	--code outline{{
	use("liuchengxu/vista.vim")
	--}}
	--hop{{
	use({
		"phaazon/hop.nvim",
		branch = "v1",
		config = function()
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	})
	--}
	--vim-tex{{
	use("lervag/vimtex")
	--}}
end)
