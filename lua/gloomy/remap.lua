vim.g.mapleader = " "

vim.keymap.set("", "<F2>", vim.cmd.noh)
vim.keymap.set("n", "<F4>", ":bo term<CR>")
vim.keymap.set("t", "<F4>", "<C-d>")

vim.keymap.set("n", "<leader>w", vim.cmd.w)

vim.keymap.set("", "0", "^")

-- Binds I stole from Prime
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Resize split windows using arrow keys by pressing:
-- CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
vim.keymap.set("", "<c-up>", "<c-w>+")
vim.keymap.set("", "<c-down>", "<c-w>-")
vim.keymap.set("", "<c-left>", "<c-w>>")
vim.keymap.set("", "<c-right>", "<c-w><")

vim.keymap.set("", "<C-j>", "<C-W>j")
vim.keymap.set("", "<C-k>", "<C-W>k")
vim.keymap.set("", "<C-h>", "<C-W>h")
vim.keymap.set("", "<C-l>", "<C-W>l")

vim.keymap.set("", "<leader>tc", function() vim.cmd.bdelete {bang = true} end)
vim.keymap.set("", "<leader>tn", ":e ~/buffer<CR>")
vim.keymap.set("", "<leader>x", ":e ~/buffer.md<CR>")

vim.keymap.set("", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>")

vim.cmd([[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])

-- Spell checking
vim.keymap.set("", "<leader>ss", ":setlocal spell!<CR>")

vim.keymap.set("", "<leader>sn", "]s")
vim.keymap.set("", "<leader>sp", "[s")
vim.keymap.set("", "<leader>sa", "zg")
vim.keymap.set("", "<leader>s?", "z=")

-- Count characters...
-- ...in visualization.
vim.keymap.set("v", "<leader>cs", ':<BS><BS><BS><BS><BS>%s/\\%V./&/g')
-- ...in line.
vim.keymap.set("n", "<leader>cl", '0v$:<BS><BS><BS><BS><BS>%s/\\%V./&/g')
-- ...in block/paragraph.
vim.keymap.set("n", "<leader>cb", '{v}:<BS><BS><BS><BS><BS>%s/\\%V./&/g')
-- ...in file
vim.keymap.set("n", "<leader>cf", 'ggVG:<BS><BS><BS><BS><BS>%s/\\%V./&/g')
