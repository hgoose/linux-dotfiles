require("hgoose")

vim.cmd([[hi SignColumn guibg=Normal]])
vim.cmd([[set autoindent]])
vim.cmd("colorscheme retrobox")
-- vim.cmd("colorscheme dracula_gruvback")
-- vim.cmd("colorscheme oxocarbon")

vim.opt.spell = true
vim.opt.spelllang = 'en'
vim.cmd[[
    hi SpellBad ctermfg=red guifg=red
    hi SpellCap ctermfg=blue guifg=blue
    hi NormalFloat guibg=#282828
]]

vim.api.nvim_create_user_command("Colorschemes", function()
  local schemes = vim.fn.getcompletion("", "color")
  vim.ui.select(schemes, { prompt = "Select colorscheme:" }, function(choice)
    if choice then
      vim.cmd("colorscheme " .. choice)
    end
  end)
end, {})



