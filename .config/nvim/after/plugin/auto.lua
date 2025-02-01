local cmp = require('cmp')
local lspkind = require('lspkind')
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For luasnip users.
        end,
    },

    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },  -- For luasnip
    }, {
        { name = 'buffer' },
    }),

    formatting = {
        -- changing the order of fields so the icon is the first
        fields = {'menu', 'abbr', 'kind'},
        -- here is where the change happens
        format = function(entry, item)
            local menu_icon = {
                nvim_lsp = 'λ',
                luasnip = '⋗',
                buffer = 'Ω',
                path = '🖫',
                nvim_lua = 'Π',
                maxwidth = 50,
                ellipsis_char = "...",
            }
            item.menu = menu_icon[entry.source.name]
            return item
        end,
    },
    window = {
         completion = {
             border = "rounded",
             winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder",
         },
         documentation = {
              winhighlight = "Normal:CmpDocNormal,FloatBorder:CmpBorder",
         },
    },
})
