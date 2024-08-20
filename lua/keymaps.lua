-- Common Options
local opts = {
  noremap = true,
  silent = true,
}

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>p', '"+p', opts)
vim.keymap.set('n', '<leader>y', '"+y', opts)

-- Resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Start Visual with the same area
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Toggle Mouse 
vim.opt.mouse = ''
vim.keymap.set('', '<leader><F2>', function ()
  if vim.api.nvim_get_option_value("mouse", { scope = "global" }) ~= "" then
    vim.opt.mouse = ''
  else
    vim.opt.mouse = 'a'
  end
end)
