require("hgoose")

vim.cmd([[hi SignColumn guibg=Normal]])
vim.cmd([[set autoindent]])
vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme dracula_gruvback")
-- vim.cmd("colorscheme oxocarbon")

vim.opt.spell = true
vim.opt.spelllang = 'en'
vim.cmd[[
    hi SpellBad ctermfg=red guifg=red
    hi SpellCap ctermfg=blue guifg=blue
]]


