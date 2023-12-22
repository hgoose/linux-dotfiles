require("toggleterm").setup({
    size = 10,
    open_mapping = [[<F7>]],
    shading_factor = 2,
    direction = "float",
    float_opts = {
        border = "curved",
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
})

vim.keymap.set("n", "<leader>nf", "<cmd>ToggleTerm direction=float<cr>")
vim.keymap.set("n", "<leader>nh", "<cmd>ToggleTerm size=10 direction=horizontal<cr>")
vim.keymap.set("n", "<leader>nv", "<cmd>ToggleTerm size=80 direction=vertical<cr>")
vim.keymap.set({ "n", "v", "t" }, "<C-l>", "<cmd>ToggleTerm<cr>")

-- Improved Terminal Navigation
vim.keymap.set("t", "<C-n>", "<c-\\><c-n><c-w>h") -- left
vim.keymap.set("t", "<C-t>", "<c-\\><c-n><c-w>k") -- up
-- vim.keymap.set("t", "<leader>h", "<c-\\><c-n><c-w>j") -- down
-- vim.keymap.set("t", "<leader>s", "<c-\\><c-n><c-w>l") -- right
