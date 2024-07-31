return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  after = "catppuccin",
  opts = {
    options = {
      mode = "tabs",
    },
  },
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
    })

    vim.keymap.set("n", "<A-1>", ":BufferLineGoToBuffer 1<CR>", { silent = true, desc = "Go to tab 1" })
    vim.keymap.set("n", "<A-2>", ":BufferLineGoToBuffer 2<CR>", { silent = true, desc = "Go to tab 2" })
    vim.keymap.set("n", "<A-3>", ":BufferLineGoToBuffer 3<CR>", { silent = true, desc = "Go to tab 3" })
    vim.keymap.set("n", "<A-4>", ":BufferLineGoToBuffer 4<CR>", { silent = true, desc = "Go to tab 4" })
    vim.keymap.set("n", "<A-5>", ":BufferLineGoToBuffer 5<CR>", { silent = true, desc = "Go to tab 5" })
    vim.keymap.set("n", "<A-6>", ":BufferLineGoToBuffer 6<CR>", { silent = true, desc = "Go to tab 6" })
    vim.keymap.set("n", "<A-7>", ":BufferLineGoToBuffer 7<CR>", { silent = true, desc = "Go to tab 7" })
    vim.keymap.set("n", "<A-8>", ":BufferLineGoToBuffer 8<CR>", { silent = true, desc = "Go to tab 8" })
    vim.keymap.set("n", "<A-9>", ":BufferLineGoToBuffer 9<CR>", { silent = true, desc = "Go to tab 9" })

    vim.keymap.set("n", "<A-k>", ":BufferLineCycleNext<CR>", { silent = true, desc = "Next tab" })
    vim.keymap.set("n", "<A-j>", ":BufferLineCyclePrev<CR>", { silent = true, desc = "Prev tab" })

    vim.keymap.set("n", "<CA-j>", ":BufferLineMovePrev<CR>", { silent = true, desc = "Move tab left" })
    vim.keymap.set("n", "<CA-k>", ":BufferLineMoveNext<CR>", { silent = true, desc = "Move tab right" })

    vim.keymap.set("n", "<A-x>", ":bd<CR>", { silent = true, desc = "Close current tab" })
    vim.keymap.set("n", "<leader>to", ":BufferLineCloseOthers<CR>", { silent = true, desc = "Close other tabs" })
  end,
}
