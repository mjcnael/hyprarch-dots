vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>", { desc = "Exit insert and visual mode with jk" })
keymap.set("i", "ол", "<Esc>", { desc = "Exit insert and visual mode with jk" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- quit
keymap.set("n", "<C-q>", ":q<cr>", { desc = "Quit" })

-- save
keymap.set("n", "<C-s>", ":w<cr>", { desc = "Save" })

-- select all
keymap.set("n", "<C-a>", "ggVG<cr>", { desc = "Select all" })

-- delete without yanking
keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- move a blocks of text up/down with K/J in visual mode
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move block of text up" })
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move block of text down" })

keymap.set("n", "<C-k>", ":m -2<CR>", { silent = true, desc = "Move line up" })
keymap.set("n", "<C-j>", ":m +1<CR>", { silent = true, desc = "Move line down" })

keymap.set("n", "<Tab>", ">>", { noremap = true, silent = true })
keymap.set("n", "<S-Tab>", "<<", { noremap = true, silent = true })
keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })

vim.keymap.set("x", "p", '"_dP', { noremap = true })
