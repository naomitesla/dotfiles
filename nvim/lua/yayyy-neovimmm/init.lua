require('yayyy-neovimmm.remap')
require('yayyy-neovimmm.plugins')
require('yayyy-neovimmm.set')



-- lil greeting message
print( '🖤🖤🖤' )


-- basic configs
vim.opt.cursorline = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.fileencoding = 'utf-8'
vim.opt.mouse = 'a'
vim.opt.guifont='SF Mono Nerd'


-- for some reason nvim-tree actlly needs this
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- my themeeee c:
vim.cmd('colorscheme tokyonight-night')
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' }) 
