return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      filetypes = {
        javascript = true,
        typescript = true,
        python = true,
        cpp = true,
        ["*"] = false,
      },
      suggestion = {
        enabled = true,
        auto_trigger = false,
        hide_during_completion = true,
        debounce = 75,
        trigger_on_accept = true,
        keymap = {
          accept = "<C-s>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
    })
  end,
}
