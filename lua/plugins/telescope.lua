return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<C-p>",
        function() require("telescope.builtin").git_files({}) end,
        desc = "Git files",
      },
      {
        "<leader>pf",
        function()
          require("telescope.builtin").find_files({})
        end,
        desc = "Find files",
      },
      -- {
      --   "<leader>gs",
      --   function()
      --     require("telescope.builtin").git_status({})
      --   end,
      --   desc = "Git status",
      -- },
      {
        "<leader>ps",
        function()
          require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
        end,
        desc = "Grep string",
      },
      {
        "<leader>vh",
        function()
          require("telescope.builtin").help_tags({})
        end,
        desc = "Help tags",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
