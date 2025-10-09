vim.opt.nu = true
vim.opt.rnu = true

vim.cmd([[
    autocmd BufWinEnter,BufNewFile * setlocal formatoptions-=cro
]])

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.backspace = "eol,start,indent"
--vim.opt.whichwrap = 'b,s,<,>,h,l'
vim.opt.whichwrap:append("<,>,h,l")
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.breakindentopt = "shift:2,min:40,sbr"
vim.opt.showbreak = "@"
vim.opt.lbr = true

vim.opt.shortmess:remove("S")

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 7
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.mouse = "a"
vim.opt.mousemodel = "popup_setpos"

vim.o.list = true
vim.o.listchars = 'tab:» ,lead:•,trail:•'

vim.g.have_nerd_font = true
