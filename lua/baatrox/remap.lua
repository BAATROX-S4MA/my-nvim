vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in place when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search terms centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without losing current clipboard content
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard (so you can paste in browser)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete to void register (doesn't overwrite clipboard)
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Map Ctrl-c to Esc (stops annoying messages)
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable "Q" (it enters a weird mode beginners hate)
vim.keymap.set("n", "Q", "<nop>")

-- Quick search and replace for the word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make current file executable (chmod +x)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Source the current file (reload config)
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
