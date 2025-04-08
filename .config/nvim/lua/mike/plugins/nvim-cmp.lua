return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    {
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      version = "v4.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!).
      build = "make install_jsregexp",
    },
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
    "mlaursen/vim-react-snippets",
  },
  config = function()
    local cmp = require("cmp")

    local luasnip = require("luasnip")

    require("vim-react-snippets").lazy_load()

    -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
        ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
        ["<C-e>"] = cmp.mapping(cmp.mapping.abort(), { "i", "c" }),
        ["<Tab>"] = cmp.mapping(cmp.mapping.confirm({ select = true }), { "i", "c" }),
      }),
      window = {
        completion = cmp.config.window.bordered({
          winhighlight = "FloatBorder:CmpBorder,CursorLine:CmpBorder",
        }),
        documentation = cmp.config.window.bordered({
          winhighlight = "FloatBorder:CmpBorder,CursorLine:CmpBorder",
        }),
      },

      -- sources for autocompletion
      sources = cmp.config.sources({
        { name = "luasnip" }, -- snippets
        { name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" },
        { name = "vim-react-snippets" }, -- file system paths
        { name = "path" }, -- file system paths
        { name = "buffer" }, -- text within current buffer
      }),
    })

    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "cmdline" },
        { name = "path" },
      }),
      matching = { disallow_symbol_nonprefix_matching = false },
    })
  end,
}
