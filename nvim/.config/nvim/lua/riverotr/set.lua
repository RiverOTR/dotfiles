vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.listchars = { eol = '¬', space = '·' }

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.cmd("set nofoldenable")

local function set_colorcolumn_100()
    vim.opt.colorcolumn = "100"
end

vim.api.nvim_create_augroup('GodotSettings', { clear = true })

vim.api.nvim_create_autocmd('BufRead', {
    pattern = {'*.cs'},
    callback = set_colorcolumn_100,
    group = 'GodotSettings'
})
vim.api.nvim_create_autocmd('BufNewFile', {
    pattern = {'*.cs'},
    callback = set_colorcolumn_100,
    group = 'GodotSettings'
})

vim.g.mapleader = " "
