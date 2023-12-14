local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ma", mark.add_file)
vim.keymap.set("n", "<leader>mm", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>mh", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>mt", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>mn", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>ms", function() ui.nav_file(4) end)
