function map(mode, key, action)
    vim.keymap.set(mode, key, action, { noremap = true, silent = true })
end

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nt = require "nvim-tree"

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nt.setup {
            hijack_cursor = true,
            disable_netrw = true,
            view = {
                width = "25%",
            },

            sort = {
                sorter = "case_sensitive",
                folders_first = true,
            },

            renderer = {
                full_name = true,
                group_empty = true,
                highlight_opened_files = "icon",
                indent_markers = { enable = true },
            },

            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },

            filters = {
                custom = { ".DS_Store" },
            },

            git = {
                enable = true,
                ignore = false,
            },
        }

        map("n", "<leader>ee",  ":NvimTreeToggle<CR>")
        map("n", "<leader>ew",  ":NvimTreeFocus<CR>")
        map("n", "<leader>er",  ":NvimTreeRefresh<CR>")
        map("n", "<leader>ec",  ":NvimTreeCollapse<CR>")
        map("n", "<leader>ef",   ":NvimTreeFindFile<CR>")
        map("n", "<leader>et",  ":NvimTreeFindFileToggle<CR>")
    end
}
