return {
  "mbbill/undotree",
  config = function()
    vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
  end,
}
