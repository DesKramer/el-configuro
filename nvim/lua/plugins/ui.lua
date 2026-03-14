-- UI Enhancement plugins

return {
	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "gruvbox",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
		end,
	},

	-- Buffer line (tabs)
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					separator_style = "slant",
					always_show_bufferline = true,
					show_buffer_close_icons = true,
					show_close_icon = true,
					color_icons = true,
					diagnostics = "nvim_lsp",
					diagnostics_indicator = function(count, level)
						local icon = level:match("error") and " " or " "
						return " " .. icon .. count
					end,
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							highlight = "Directory",
							separator = true,
						},
					},
				},
			})
		end,
	},

	-- Indent guides
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("ibl").setup({
				indent = {
					char = "│",
				},
				scope = {
					enabled = true,
					show_start = true,
					show_end = false,
				},
			})
		end,
	},

	-- Dashboard
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = {
				"                                                                ",
				"   /$$$$$$$  /$$$$$$$$ /$$$$$$$$/$$    /$$ /$$$$$$ /$$      /$$ ",
				"  | $$__  $$| $$_____/|_____ $$| $$   | $$|_  $$_/| $$$    /$$$ ",
				"  | $$  \\ $$| $$           /$$/| $$   | $$  | $$  | $$$$  /$$$$ ",
				"  | $$  | $$| $$$$$       /$$/ |  $$ / $$/  | $$  | $$ $$/$$ $$ ",
				"  | $$  | $$| $$__/      /$$/   \\  $$ $$/   | $$  | $$  $$$| $$ ",
				"  | $$  | $$| $$        /$$/     \\  $$$/    | $$  | $$\\  $ | $$",
				"  | $$$$$$$/| $$$$$$$$ /$$$$$$$$  \\  $/    /$$$$$$| $$ \\/  | $$",
				"  |_______/ |________/|________/   \\_/    |______/|__/     |__/",
			}

			dashboard.section.buttons.val = {
				dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
				dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
				dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
				dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
				dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
				dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
			}

			dashboard.section.footer.val = "BREAK SHIT GET CRACKED!"

			dashboard.config.opts.noautocmd = true

			alpha.setup(dashboard.config)
		end,
	},

	-- Notifications
	{
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({
				background_colour = "#000000",
				render = "compact",
				stages = "fade",
			})
			vim.notify = require("notify")
		end,
	},

	-- Better UI for vim.ui.select and vim.ui.input
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		config = true,
	},

	-- Icon picker
	{
		"nvim-telescope/telescope-symbols.nvim",
	},

	-- Better diagnostics/quickfix UI
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("trouble").setup({
				icons = true,
				fold_open = "v",
				fold_closed = ">",
				indent_lines = false,
				severity = nil,
				groupby = "severity",
				height = 10,
			})

			vim.keymap.set("n", "<leader>xx", "<cmd>Trouble<cr>", { desc = "Toggle trouble list" })
			vim.keymap.set("n", "<leader>xw", "<cmd>Trouble diagnostics<cr>", { desc = "Workspace diagnostics" })
			vim.keymap.set("n", "<leader>xd", "<cmd>Trouble diagnostics filter.buf=0<cr>", { desc = "Document diagnostics" })
			vim.keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", { desc = "Quickfix list" })
			vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist<cr>", { desc = "Location list" })
		end,
	},
}
