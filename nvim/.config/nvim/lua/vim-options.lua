vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd([[command! Wa wa]])
vim.cmd([[command! Wqa wqa]])
vim.cmd([[command! W w]])
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.g.mapleader = " "

vim.wo.number = true
vim.wo.wrap = false
vim.wo.cursorline = true
vim.o.fillchars = 'eob: '

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8

-- Next buffer
vim.api.nvim_set_keymap('n', '<C-l>', ':bnext<CR>', { noremap = true, silent = true })

-- Previous buffer
vim.api.nvim_set_keymap('n', '<C-h>', ':bprevious<CR>', { noremap = true, silent = true })

-- vim.api.nvim_set_keymap('n', '<C-w>', ':bd<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':bd<CR>', { noremap = true, silent = true })
