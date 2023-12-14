local bufferline = require("bufferline")
bufferline.setup({
    options = {
        style_preset = bufferline.style_preset.minimal, -- or bufferline.style_preset.minimal,
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon'
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        highlight = false,
        indicator_icon = "▎",
        numbers = "ordinal",
        max_name_length = 15,
        max_prefix_length = 6,
        tab_size = 20,
        diagnostics = "nvim_lsp",
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        persist_buffer_sort = true,
        enforce_regular_tabs = true,
        separator_style = "padded",
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and "" or ""
            return icon .. count
        end,
        offsets = { {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Direcotry",
            separator = true,
        }
        },
    },

})

vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")
vim.keymap.set("n", "<C-c>", "<cmd>bdelete!<cr>")
