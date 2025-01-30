return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	config = function()
		require("chatgpt").setup({
			-- api_key_cmd = "gpg --decrypt " .. home .. "/.config/nvim/secret.txt.gpg"
			api_key_cmd = "bw get notes openai",
			popup_window = {
				border = {
					highlight = "Normal",
				},
			},
			system_window = {
				border = {
					highlight = "Normal",
				},
			},
			popup_input = {
				border = {
					highlight = "Normal",
				},
			},
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
