require("baatrox")

vim.keymap.set("i", "jk", "<esc>");
vim.keymap.set("i", "JK", "<esc>");

vim.keymap.set("n", "<space>e", ":20Lexplore<CR>")


vim.keymap.set("n", "<C-h>", ":bp<CR>")
vim.keymap.set("n", "<C-l>", ":bp<CR>")
vim.keymap.set("n", "<C-q>", ":bd<CR>", {noremap=true})

vim.opt.number=true;
vim.opt.relativenumber=true;
