vim.g.mapleader = " "

local map = vim.keymap.set


-- Salvar
map("n", "<leader>w", ":w<CR>")
-- Sair
map("n", "<leader>q", ":q!<CR>")
-- Nvim-tree keymaps
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<leader>r", ":vertical resize 80<CR>")
-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
-- Git
map("n", "<leader>gb", function()
    require("gitsigns").blame_line({ full = true })
end)
-- Abas 

map("n", "<S-l>", ":BufferLineCycleNext<CR>")
map("n", "<S-h>", ":BufferLineCyclePrev<CR>")
map("n", "<leader>x", ":bd<CR>")
