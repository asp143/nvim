-- return {
-- 	"smjonas/inc-rename.nvim",
-- 	config = function()
-- 		vim.keymap.set("n", "<leader>rn", "<cmd>IncRename<cr>", { noremap = true, silent = true })
-- 	end,
-- }
return {
	"smjonas/inc-rename.nvim",
	config = function()
		require("inc_rename").setup()
		-- vim.keymap.set("n", "<leader>rn", "<cmd>IncRename<cr>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>rn", ":IncRename ")
	end,
}
