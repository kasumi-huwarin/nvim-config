-- 基本キーマップ
local map = vim.keymap.set

-- ウィンドウ移動
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- バッファ移動
map("n", "<C-Right>", ":bnext<CR>") -- 次のバッファ
map("n", "<C-Left>", ":bprevious<CR>") -- 前のバッファ

local opts = { noremap = true, silent = true }

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

-- 補完
vim.keymap.set("i", "<C-Space>", function()
	require("cmp").complete()
end, opts)

-- Telescope
vim.keymap.set("n", "<leader>ff", function()
	require("telescope.builtin").find_files()
end, { desc = "Find files", noremap = true, silent = true })
vim.keymap.set("n", "<leader>fg", function()
	require("telescope.builtin").live_grep()
end, { desc = "Live grep", noremap = true, silent = true })
vim.keymap.set("n", "<leader>fb", function()
	require("telescope.builtin").buffers()
end, { desc = "Find buffers", noremap = true, silent = true })
vim.keymap.set("n", "<leader>fh", function()
	require("telescope.builtin").help_tags()
end, { desc = "Help tags", noremap = true, silent = true })

-- ノーマルモードで ; を押すと行末に移動 $(shift + 4) の代替
vim.api.nvim_set_keymap("n", ";", "$", { noremap = true, silent = true })

-- Esc をiモードの時にjkかkjに当てる
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })
