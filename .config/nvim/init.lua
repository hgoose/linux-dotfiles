require("hgoose")

vim.cmd([[hi SignColumn guibg=Normal]])
vim.cmd([[set autoindent]])
-- vim.cmd("colorscheme ron")
-- vim.cmd("colorscheme retrobox")
-- vim.cmd("colorscheme unokai")

vim.cmd("colorscheme monokai-pro-classic")
vim.cmd[[
    hi normal guibg=#171717
    hi LineNr guifg=#bdbdbd guibg=#171717
    hi SignColumn guibg=#171717
]]

-- vim.cmd("colorscheme delek")
-- vim.cmd[[
--     hi normal guibg=#fff8dc guifg=#000000
--     hi LineNr guifg=#bdbdbd guibg=#171717
--     hi SignColumn guibg=#171717 guifg=#ffffff
-- ]]

-- vim.cmd("hi normal guibg=#1e1f22")
-- vim.cmd("colorscheme dracula_gruvback")
-- vim.cmd("colorscheme oxocarbon")

vim.opt.spell = true
vim.opt.spelllang = 'en'
vim.cmd[[
    hi SpellBad ctermfg=red guifg=red
    hi SpellCap ctermfg=blue guifg=blue
    hi NormalFloat guibg=#282828
    hi BufferLineFill guibg=#bdbdbd
    hi EndOfBuffer guibg=#bdbdbd
]]

vim.cmd[[
    command! -nargs=1 Look cexpr [] | bufdo vimgrepadd /<args>/gj % | copen
]]

-- Manual load of registers with macros
vim.cmd[[
    map <CR> @
    let @a = "i\\textbf{\<Esc>Ea}\<Esc>"
    let @b = "^i\\item\<Space>bold\<M-Tab>\<Esc>sa\<BS>\<Esc>f:\<Ignore>i}\<Esc>h"
    let @c = "^i\\item\<Space>\<Esc>h"
]]

-- vim.api.nvim_create_user_command("Colorschemes", function()
--   local schemes = vim.fn.getcompletion("", "color")
--   vim.ui.select(schemes, { prompt = "Select colorscheme:" }, function(choice)
--     if choice then
--       vim.cmd("colorscheme " .. choice)
--     end
--   end)
-- end, {})
--
