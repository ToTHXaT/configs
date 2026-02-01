return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },

      -- ensure these language parsers are installed
      ensure_installed = {
        "lua",
        "python",
        "rust",
        "go",
        "javascript",
        "typescript",
        "jsdoc",

        "svelte",

        "json",
        "toml",
        "tsx",
        "yaml",
        "html",
        "css",
        "hyprlang",
        "markdown",
        "markdown_inline",
        "bash",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
