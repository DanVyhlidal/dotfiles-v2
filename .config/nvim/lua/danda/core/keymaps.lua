vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true, buffer = bufnr }

-- delete single character without copying into register
keymap.set("n", "x", '"_x', opts)

--Window management
keymap.set("n", "<leader>sv", "<C-w>v", opts)     -- split window vertically
keymap.set("n", "<leader>sx", "<C-w>s", opts)     -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", opts)     -- make split windows equal width & height
keymap.set("n", "<leader>sq", ":close<CR>", opts) -- close current split window
keymap.set("n", "<leader>sl", "<C-w>x", opts)     -- move current window to the right

--format format the document
keymap.set("n", "<leader>kd", ":lua vim.lsp.buf.format()<CR>", opts) -- mapping to restart lsp if necessary
