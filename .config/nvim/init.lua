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

-- vim.api.nvim_create_user_command("Colorschemes", function()
--   local schemes = vim.fn.getcompletion("", "color")
--   vim.ui.select(schemes, { prompt = "Select colorscheme:" }, function(choice)
--     if choice then
--       vim.cmd("colorscheme " .. choice)
--     end
--   end)
-- end, {})
--
