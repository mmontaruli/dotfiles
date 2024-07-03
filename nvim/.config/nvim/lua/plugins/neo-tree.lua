return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>', {})
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,        -- This makes hidden files visible
          hide_dotfiles = false, -- This shows dotfiles (files starting with a dot)
          never_show = {
            ".git",
          },
        },
      },
    })
  end
}
