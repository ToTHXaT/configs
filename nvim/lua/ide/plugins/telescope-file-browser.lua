function map(mode, key, action)
    vim.keymap.set(mode, key, action, { noremap = true, silent = true })
end

return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
        local telescope = require "telescope"
        local fb_actions = require "telescope".extensions.file_browser.actions

            require("telescope").setup {
              extensions = {
                file_browser = {
                  theme = "ivy",
                  -- disables netrw and use telescope-file-browser in its place
                  hijack_netrw = true,
                  mappings = {
                    i = {
                        ["<C-j>"] = fb_actions.goto_parent_dir,
                    },
                    n = {
                        ["<C-j>"] = fb_actions.goto_parent_dir,
                        ["j"] = fb_actions.goto_parent_dir,
                    },
                  },
                },
              },
            }
            -- To get telescope-file-browser loaded and working with telescope,
            -- you need to call load_extension, somewhere after setup function:
            map("n", "<leader>e", ":Telescope file_browser<CR>")
            require("telescope").load_extension "file_browser"
    end
}

