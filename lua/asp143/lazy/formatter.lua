return {
	'mhartington/formatter.nvim',
	config = function()
		-- Utilities for creating configurations
		local util = require "formatter.util"

		-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
		require("formatter").setup {
			-- Enable or disable logging
			logging = true,
			-- Set the log level
			log_level = vim.log.levels.WARN,
			-- All formatter configurations are opt-in
			filetype = {
				lua = {
					require("formatter.filetypes.lua").lua_ls
				},

				-- Use the special "*" filetype for defining formatter configurations on
				-- any filetype
				["*"] = {
					-- "formatter.filetypes.any" defines default configurations for any
					-- filetype
					require("formatter.filetypes.any").remove_trailing_whitespace
				},
				typescript = {
					require("formatter.filetypes.typescript").prettier
					-- function()
					-- 	return {
					-- 		exe = "prettier",
					-- 		args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
					-- 		stdin = true
					-- 	}
					-- end
				},
			}
		}
	end
}
