require('Comment').setup(
    {
        ---Add a space b/w comment and the line
        padding = true,
        ---Whether the cursor should stay at its position
        sticky = true,
        ---Lines to be ignored while (un)comment
        ignore = nil,
        ---LHS of toggle mappings in NORMAL mode
        toggler = {
            ---Line-comment toggle keymap
            line = 'gcc',
            ---Block-comment toggle keymap
            block = 'gbc',
        },
        -- -LHS of operator-pending mappings in NORMAL and VISUAL mode
        opleader = {
            ---Line-comment keymap
            line = 'gc',
            ---Block-comment keymap
            block = 'gb',
        },
        ---LHS of extra mappings
        extra = {
            ---Add comment on the line above
            above = 'gcO',
            ---Add comment on the line below
            below = 'gco',
            ---Add comment at the end of line
            eol = 'gcA',
        },
        ---Enable keybindings
        ---NOTE: If given `false` then the plugin won't create any mappings
        mappings = {
            ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
            basic = true,
            ---Extra mapping; `gco`, `gcO`, `gcA`
            extra = true,
        },
        ---Function to call before (un)comment
        -- pre_hook = nil,
        ---Function to call after (un)comment
        post_hook = nil,
        pre_hook = function(ctx)
        -- Only change the comment style in PHP files
        if vim.bo.filetype == 'php' then
            -- Use `//` for single-line comments
            if ctx.ctype == require('Comment.utils').ctype.linewise then
                return '// %s'
            -- Use `/* ... */` for block comments
            elseif ctx.ctype == require('Comment.utils').ctype.blockwise then
                return '/* %s */'
            end
        end
    end,

    })

vim.keymap.set("n", "<leader>/", function() require("Comment.api").toggle.linewise.current() end)                 -- Comment lines
vim.keymap.set("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>") -- Comment many lines
