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
    local hl = vim.api.nvim_set_hl
    hl(0, "Normal", { bg = "NONE" })
    hl(0, "NeoTreeNormal", { bg = "NONE" })
    hl(0, "NeoTreeEndOfBuffer", { bg = "NONE" })
    hl(0, "NormalNC", { bg = "NONE" }) -- Normal non-current window
    hl(0, "NeoTreeWinSeparator", { bg = "NONE", fg = "#44475a" })
    hl(0, "WinSeparator", { bg = "NONE", fg = "#44475a" })
    hl(0, "NeoTreeNormalNC", { bg = "NONE" })
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
