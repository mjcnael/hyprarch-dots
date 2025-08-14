return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = function()
    require("nvim-surround").setup({
      keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal = "<leader>ss",
        normal_cur = "yss",
        normal_line = "yS",
        normal_cur_line = "ySS",
        visual = "<leader>ss",
        visual_line = "gS",
        delete = "<leader>sd",
        change = "<leader>sc",
        change_line = "cS",
      },
    })
  end,
}
