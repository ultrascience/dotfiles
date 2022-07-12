return require("packer").startup(function()
	use("onsails/lspkind-nvim")
	use("fhill2/telescope-ultisnips.nvim")
	use({
		"sQVe/sort.nvim",

		-- Optional setup for overriding defaults.
		config = function()
			require("sort").setup({
				delimiters = {
					",",
					"|",
					";",
					":",
					"s", -- Space
					"t", -- Tab
				},
			})
		end,
	})
	use("windwp/nvim-autopairs")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})
	use({
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").opts)
		end,
	})
	use({ "David-Kunz/cmp-npm", requires = { "nvim-lua/plenary.nvim" } })
	use("renerocksai/telekasten.nvim")
	use("renerocksai/calendar-vim")
	use({ "haringsrob/nvim_context_vt" })
	use({ "lukas-reineke/cmp-under-comparator" })
	use({ "chentoast/marks.nvim" })
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "lewis6991/gitsigns.nvim" })
	use("folke/tokyonight.nvim")
	use({ "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" })
	-- use "vimwiki/vimwiki"
	use({ "nvim-treesitter/nvim-treesitter" })
	use("jose-elias-alvarez/nvim-lsp-ts-utils")
	use("lervag/vimtex")
	use("windwp/nvim-ts-autotag")
	use("norcalli/nvim-colorizer.lua")
	use("nvim-treesitter/nvim-treesitter-textobjects")
	use("wbthomason/packer.nvim")
	use({ "ray-x/lsp_signature.nvim" })
	use("hrsh7th/cmp-buffer")
	use("mfussenegger/nvim-jdtls")
	use("hrsh7th/cmp-calc")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-path")
	use("gennaro-tedesco/nvim-jqx")
	use("hrsh7th/nvim-cmp")
	use({ "michaelb/sniprun", run = "bash ./install.sh" })
	use({
		"pwntester/octo.nvim",
		config = function()
			require("octo").setup()
		end,
	})
	use({ "neovim/nvim-lspconfig" })
	use("p00f/nvim-ts-rainbow")
	use("kdheepak/lazygit.nvim")
	use("tpope/vim-surround")
	use("kdheepak/cmp-latex-symbols")
	use({
		"tzachar/cmp-tabnine",
		run = "./install.sh",
		requires = "hrsh7th/nvim-cmp",
	})
	use("github/copilot.vim")
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	})

	use("ray-x/cmp-treesitter")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({
		"SirVer/ultisnips",
		requires = { { "honza/vim-snippets", rtp = "." } },
		config = function()
			vim.g.UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
			vim.g.UltiSnipsJumpForwardTrigger = "<Plug>(ultisnips_jump_forward)"
			vim.g.UltiSnipsJumpBackwardTrigger = "<Plug>(ultisnips_jump_backward)"
			vim.g.UltiSnipsListSnippets = "<c-x><c-s>"
			vim.g.UltiSnipsRemoveSelectModeMappings = 0
		end,
	})
	use("quangnguyen30192/cmp-nvim-ultisnips")
	use("lukas-reineke/indent-blankline.nvim")
	-- use 'sbdchd/neoformat'
	use({ "mhartington/formatter.nvim" })
	use({ "mattn/emmet-vim" })
	use("kyazdani42/nvim-web-devicons")
	use({ "romgrk/barbar.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
	use({
		"folke/which-key.nvim",
	})
	use({ "hrsh7th/cmp-cmdline" })
	use({ "phaazon/hop.nvim" })
	use({
		"hoob3rt/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use("mfussenegger/nvim-dap")
	use("nvim-neotest/neotest-python")
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	use("mfussenegger/nvim-dap-python")
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "vim-test/vim-test" })
	use({
		"nvim-neotest/neotest",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"antoinemadec/FixCursorHold.nvim",
		},
	})
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			local saga = require("lspsaga")

			saga.init_lsp_saga({
				max_preview_lines = 15,
			})
		end,
	})
	use({ "ThePrimeagen/refactoring.nvim" })
	use({ "nvim-treesitter/nvim-treesitter-refactor" })
	use({
		"NTBBloodbath/rest.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("rest-nvim").setup({
				-- Open request results in a horizontal split
				result_split_horizontal = false,
				-- Keep the http file buffer above|left when split horizontal|vertical
				result_split_in_place = false,
				-- Skip SSL verification, useful for unknown certificates
				skip_ssl_verification = false,
				-- Highlight request on run
				highlight = {
					enabled = true,
					timeout = 150,
				},
				result = {
					-- toggle showing URL, HTTP info, headers at top the of result window
					show_url = true,
					show_http_info = true,
					show_headers = true,
				},
				-- Jump to request line on run
				jump_to_request = false,
				env_file = ".env",
				custom_dynamic_variables = {},
				yank_dry_run = true,
			})
		end,
	})
end)
