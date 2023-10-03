vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- pretty sickkkkk keymap, just lets me move
--    around blocks of text in visual mode c:
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')


-- keep my cursor in the middle of the
--      screen please :c
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')


-- visual mode binding that keeps paste
--      buffer c:
vim.keymap.set('x', '<leader>p', '"_dp')


-- please god no
vim.keymap.set('n', 'Q', '<nop>')


-- word replaceeee!!
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
