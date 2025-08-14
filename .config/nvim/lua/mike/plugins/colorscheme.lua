return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {
        mocha = {
          text = "#ffffff",
          base = "#000000",
          crust = "#000000",
          mantle = "#000000",
        },
      },
      highlight_overrides = {
        mocha = function(C)
          return {
            TabLineSel = { bg = "#bf5f75" },
            CmpBorder = { fg = "#bf5f75" },
            Pmenu = { bg = C.none },
            TelescopeBorder = { fg = "#bf5f75" },
          }
        end,
      },
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        lsp_trouble = true,
        which_key = true,
        nvim_surround = true,
        mason = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    })

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
      border = "rounded",
    })

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
      border = "rounded",
    })

    vim.diagnostic.config({
      float = { border = "rounded" },
    })

    vim.o.winborder = "rounded"
    vim.cmd.colorscheme("catppuccin")
    vim.cmd.highlight("LineNr guifg=#C8A6BE")

    vim.cmd.highlight("EndOfBuffer guifg=#705867")
    vim.cmd.highlight("Visual guifg=#e22473 guibg=none")
    vim.cmd.highlight("FloatBorder guifg=#bf5f75 guibg=none")
    vim.cmd.highlight("NormalFloat guibg=none")
    vim.cmd.highlight("FloatTitle guibg=none")
    vim.cmd.highlight("FloatFooter guibg=none")
    vim.cmd.highlight("NormalFloat guibg=none")
    vim.cmd.highlight("Substitute guibg=none guifg=#bf5f75")
    vim.cmd.highlight("TelescopeSelection guibg=none guifg=#bf5f75")
    vim.cmd.highlight("TelescopeSelectionCaret guibg=none guifg=#bf5f75")
    vim.cmd.highlight("RenderMarkdownCodeInline guibg=#222222")
    vim.cmd.highlight("RenderMarkdownCode guibg=#222222")
    vim.cmd.highlight("RenderMarkdownInfo guibg=#222222")
    vim.cmd.highlight("Normal guibg=none ctermbg=none")
    vim.cmd.highlight("Cursor guibg=#e22473 ctermbg=67")
    vim.cmd.highlight("CursorLine guibg=none")
    vim.cmd.highlight("iCursor guibg=#e22473 ctermbg=229")
    vim.cmd.highlight("rCursor guibg=#e22473 ctermbg=124")
    vim.cmd.set(
      "guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver100-iCursor,r-cr:block-rCursor,o:hor50-Cursor/lCursor,sm:block-iCursor,a:blinkwait1000-blinkon500-blinkoff250"
    )
    vim.cmd.highlight("FoldColumn guifg=#604a56")
  end,
}
