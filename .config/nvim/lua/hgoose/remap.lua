-- Easier Remaps
local function map(mode, newkey, action)
    vim.keymap.set(mode, newkey, action)
end

-- Set Leader
vim.g.mapleader = " "

-- Normal Mode Mappings
-- map("n", "<leader>pv", vim.cmd.Ex)                                    -- Explore
vim.keymap.set({ "n", "v" }, "h", "<down>")                           -- Down
map({ "n", "v" }, "t", "<up>")                                        -- Up
map({ "n", "v" }, "n", "<left>")                                      -- Left
map({ "n", "v" }, "s", "<right>")                                     -- Right
map("n", "T", ":m .-2<CR>==")                                         -- Move line up
map("n", "J", ":m .+1<CR>==")                                         -- Move line down

map("n", ";", "n")                                                    -- Search next on find
map("n", "<leader>6", "<cmd>!bash opb<cr>")                           -- Open pdf in browser
map("n", "<leader>9", "<cmd>VimtexCompile<cr>")                       -- Start/Stop vimtex complier
map("n", "<leader>8", "<cmd>UltiSnipsEdit<cr>")                       -- Edit Snippets
map("n", "<leader>7", "<cmd>e ~/dev/latex/template/preamble.tex<cr>") -- Open LaTeX preamble

-- Packer maps
map("n", "<leader>pc", "<cmd>PackerCompile<cr>")
map("n", "<leader>ps", "<cmd>PackerSync<cr>")
map("n", "<leader>pi", "<cmd>PackerInstall<cr>")
map("n", "<leader>pS", "<cmd>PackerStatus<cr>")
map("n", "<leader>pu", "<cmd>PackerUpdate<cr>")

-- Visual Mode Mappings
map("v", "T", ":m '<-2<CR>gv=gv")
map("v", "J", ":m '>+1<CR>gv=gv")

-- Other
vim.cmd [[
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>
]]


map("n", "<C-d>", "<C-d>zz") -- Better half page jumping
map("n", "<C-u>", "<C-u>zz") -- Better half page jumping

-- map("n", "J", "mzJ`z")       -- Better J
map("n", ";", "nzzzv") -- Keep cursor in the middle when jumping searches
map("n", "N", "Nzzzv") -- Keep cursor in the middle when jumping searches

map("n", "Q", "<nop>")
map("n", "<leader>b", vim.lsp.buf.format)

map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set({"n", "v"}, "<leader>t", "{")
vim.keymap.set({"n", "v"}, "<leader>h", "}")

-- vim.keymap.set("i", "<", "<><Left>")

--  Enable/Disable transparency script activations
-- vim.cmd("autocmd VimEnter * silent !/home/datura/.config/nvim/scripts/disable_blur.sh >/dev/null 2>&1")
-- vim.cmd("autocmd VimLeave * silent !/home/datura/.config/nvim/scripts/enable_blur.sh >/dev/null 2>&1")

