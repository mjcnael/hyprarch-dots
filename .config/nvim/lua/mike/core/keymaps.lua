vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert and visual mode with jk" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- quit
keymap.set("n", "<C-q>", ":q<cr>", { desc = "Quit" })

-- save'<C-l>',
keymap.set("n", "<C-s>", ":w<cr>", { desc = "Save" })

-- delete without yanking
keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- move a blocks of text up/down with K/J in visual mode
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move block of text up" })
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move block of text down" })
