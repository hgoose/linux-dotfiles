local wk = require("which-key")
wk.register({
    -- First Key
    t = {
        name = "Toggleterm",
        -- Second Key
        f = { "Floating Terminal" },
        v = { "Vertical Terminal" },
        h = { "Horizontal Terminal" },
    },

    f = {
        name = "Telescope",

        f = { "Find files" },
        g = { "Grep" }
    },

    g = {
        name = "Fugitive",

        s = { "Show Git" }
    },

    p = {
        name = "Packer",

        s = { "Sync" },
        S = { "Status" },
        i = { "Install" },
        u = { "Update" },
        c = { "Compile" },
    },

    m = {
        name = "Harpoon",

        m = { "Show Menu" },
        a = { "Mark File" },
        h = { "First Mark" },
        t = { "Second Mark" },
        n = { "Third Mark" },
        s = { "Forth Mark" },
    },

   -- Singletons
    b = "Format Files",
    u = "Undo Tree",
    ['-'] = "File Explorer",
    ['9'] = "VimTexCompile",
    ['8'] = "Open UltiSnips",
    ['7'] = "Open LaTeX Preamble",
    ['6'] = "Open PDF in Browser",
    -- ['<C-u>'] = "Half Page Up",
    -- ['<C-d>'] = "Half Page Down",
    -- ['z='] = "Fix Spelling Mistakes",
    -- ['<'] = "Indent Left",
    -- ['>'] = "Indent Right",
    ['<leader><leader>'] = "Shoutout",
    x = "Mark Executable",
    ['/'] = "Comment Lines",
    e = "Toggle Neo-tree",
    y = "Toggle Tagbar",



}, { prefix = "<leader>" })
