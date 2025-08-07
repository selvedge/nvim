require("config.lazy")

-- Key mappings
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)             -- Go to definition
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)           -- Go to declaration
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)        -- Go to implementation
vim.keymap.set("n", "gtd", vim.lsp.buf.type_definition, opts)      -- Go to type definition
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)                  -- Hover documentation

--vim.cmd.colorscheme("habamax")

vim.opt.number = true         -- Show absolute line numbers
vim.opt.relativenumber = true -- Show relative numbers (optional but helpful for navigation)

-- Optional: set background (light/dark) before applying the theme
vim.o.background = "light" -- or "light" if you prefer

-- Optional: configure everforest before loading
vim.g.everforest_background = "medium" -- "hard", "medium", or "soft"
vim.g.everforest_enable_italic = 1
vim.g.everforest_disable_italic_comment = 0

-- Apply the theme
vim.cmd.colorscheme("everforest")
