return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "javascript", "html", "python" },  -- Removed "jinja2"
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "html" },  -- Enables regex highlighting for embedded syntax
      },
      indent = { enable = true },
    })
  end, 

  -- Jinja2 syntax plugin
  {
    "lepture/vim-jinja",
    ft = { "html", "htmldjango", "jinja" }
  }
}
