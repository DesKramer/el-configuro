-- Integrated terminal and CLI runner

return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 15,
				shade_terminals = true,
				start_in_insert = true,
				persist_size = true,
				direction = "float",
				float_opts = {
					border = "rounded",
				},
			})

			-- Simple floating terminal toggle
			vim.keymap.set(
				"n",
				"<leader>tt",
				"<cmd>ToggleTerm direction=float<CR>",
				{ desc = "Toggle floating terminal" }
			)

			-- Command runner using a dedicated floating terminal
			local Terminal = require("toggleterm.terminal").Terminal
			local cli_term = Terminal:new({
				direction = "float",
				hidden = true,
				float_opts = { border = "rounded" },
			})

			local function run_cli(cmd)
				if not cmd or cmd == "" then
					return
				end
				vim.g.last_cli_command = cmd
				-- Open the terminal (if hidden) and send the command
				if not cli_term:is_open() then
					cli_term:toggle()
				end
				cli_term:send(cmd .. "\n")
			end

			-- Prompt for a command and run it
			vim.keymap.set("n", "<leader>oc", function()
				vim.ui.input({ prompt = "CLI command:", default = vim.g.last_cli_command or "" }, function(input)
					if input then
						run_cli(input)
					end
				end)
			end, { desc = "Run CLI command" })

			-- Re-run the last command quickly
			vim.keymap.set("n", "<leader>ol", function()
				run_cli(vim.g.last_cli_command or "")
			end, { desc = "Re-run last CLI command" })
		end,
	},
}

