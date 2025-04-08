return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "mike",
        path = "~/Documents/Obsidian",
      },
    },
    notes_subdir = "🌸 notes",

    templates = {
      folder = "📄 templates",
      date_format = "%d.%m.%Y %A",
      time_format = "%H:%M",
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },

    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "🌈 daily",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%d.%m.%Y %A",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = "%d.%m.%Y %A",
      -- Optional, default tags to add to each new daily note created.
      default_tags = { "daily-notes" },
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = "daily.md",
    },
    ui = {
      enable = false,
    },

    -- see below for full list of options 👇
  },
}
