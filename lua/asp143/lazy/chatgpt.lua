return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	config = function()
		local home = vim.fn.expand("$HOME")
		require("chatgpt").setup({
			-- api_key_cmd = "gpg --decrypt " .. home .. "/.config/nvim/secret.txt.gpg"
			api_key_cmd = "bw get notes openai"
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim",
		"nvim-telescope/telescope.nvim"
	}
}
