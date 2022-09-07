vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.title = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }


-- Insesitive when closing
vim.cmd([[cnoreabbrev W! w!]])
vim.cmd([[cnoreabbrev Q! q!]])
vim.cmd([[cnoreabbrev Qall! qall!]])
vim.cmd([[cnoreabbrev Wq wq]])
vim.cmd([[cnoreabbrev Wa wa]])
vim.cmd([[cnoreabbrev wQ wq]])
vim.cmd([[cnoreabbrev WQ wq]])
vim.cmd([[cnoreabbrev W w]])
vim.cmd([[cnoreabbrev Q q]])
vim.cmd([[cnoreabbrev Qall qall]])

-- Save and close files
vim.cmd([[nnoremap <C-s> :w<CR>]])
vim.cmd([[nnoremap <C-q> :wq!<CR>]])


-- Move visual block
vim.cmd([[vnoremap J :m '>+1<CR>gv=gv]])
vim.cmd([[vnoremap K :m '<-2<CR>gv=gv]])

-- Vmap for maintain Visual Mode after shifting > and <
vim.cmd([[vmap < <gv]])
vim.cmd([[vmap > >gv]])

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
