vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = ""
vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.g.auto_save = 1
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Vimtex Setup
vim.g.vimtex_view_method = 'zathura'
vim.g.tex_fast = "bMpr"
vim.g.vimtex_quickfix_mode = 0
vim.cmd[[
let g:vimtex_compiler_latexrun_engines = {'_': 'lualatex'}
let g:vimtex_compiler_latexmk_engines = {'_': '-lualatex'}
let g:vimtex_compiler_latexmk = {
            \ 'options' : [
                \   '-shell-escape',
                \   '-verbose',
                \   '-file-line-error',
                \   '-synctex=1',
                \   '-interaction=nonstopmode',
                \ ],
                \}
let g:vimtex_syntax_packages = {'minted': {'load': 2}}
]]

-- vim.cmd("set conceallevel=1")
-- vim.g.tex_conceal = 'abdmg'

-- Set latex previewer to zathhura
vim.g.livepreview_previewer = 'zathura'

-- UltiSnips
vim.g.UltiSnipsExpandTrigger = '<a-tab>'
vim.g.UltiSnipsJumpForwardTrigger = '<a-tab>'
vim.g.UltiSnipsJumpBackwardTrigger = '<c-tab>'

