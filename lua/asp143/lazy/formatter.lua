return {
	"mhartington/formatter.nvim",
	config = function()
		-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
		require("formatter").setup({
			-- Enable or disable logging
			logging = true,
			-- Set the log level
			log_level = vim.log.levels.WARN,
			-- All formatter configurations are opt-in
			filetype = {
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
				rust = {
					require("formatter.filetypes.rust").rustfmt,
				},
				typescript = {
					require("formatter.filetypes.typescript").prettier,
					-- function()
					-- 	return {
					-- 		exe = "prettier",
					-- 		args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
					-- 		stdin = true
					-- 	}
					-- end
				},
				["*"] = {
					-- "formatter.filetypes.any" defines default configurations for any
					-- filetype
					require("formatter.filetypes.any").remove_trailing_whitespace,
				},
			},
		})
	end,
}
