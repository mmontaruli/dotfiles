return  {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      -- vim.keymap.set('n', '<C-i>', builtin.find_files, {})
      vim.keymap.set('n', '<C-i>', function()
        builtin.find_files({ hidden = true,
        file_ignore_patterns = { ".git/" }
        })
      end, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      -- vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc = 'Find Buffers' })
      vim.keymap.set('n', '<C-b>', '<cmd>Telescope buffers<CR>', { desc = 'Find Buffers' })
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown{
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}

