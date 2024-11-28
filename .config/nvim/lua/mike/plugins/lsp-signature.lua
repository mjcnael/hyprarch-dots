return {
  "ray-x/lsp_signature.nvim",
  config = function()
    require("lsp_signature").setup({
      hint_enable = false,
      handler_opts = { border = "none" },
      max_width = 80,
    })
  end,
}
