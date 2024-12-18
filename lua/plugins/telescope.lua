return {
  "nvim-telescope/telescope.nvim",

  config = function()
    require("telescope").setup({})

    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
  end,
}
