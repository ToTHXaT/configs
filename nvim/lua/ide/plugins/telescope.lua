function map(mode, key, action)
    vim.keymap.set(mode, key, action, { noremap = true, silent = true })
end

return {
    {
        "nvim-telescope/telescope.nvim", 
        branch="0.1.x",
        dependencies = {
            "nvim-tree/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            {"nvim-telescope/telescope-fzf-native.nvim", build="make"},
        },
        config = function()
            local telescope = require("telescope")
            local actions   = require("telescope.actions")

            telescope.setup({
                defaults = {
                    path_display = {"smart"},
                    mappings = {
                        i = {
                            ["<C-n>"] = false,
                            ["<C-p>"] = false,
                            ["<C-k>"] = actions.move_selection_next,
                            ["<C-l>"] = actions.move_selection_previous,
                            ["<C-;>"] = actions.select_default,
                        },
                        n = {
                            ["k"] = actions.move_selection_next,
                            ["l"] = actions.move_selection_previous,
                            [";"] = actions.select_default,
                        },
                    },
                    
                }
            })

            telescope.load_extension("fzf")

            map("n", "<leader>ff", ":Telescope find_files hidden=true<CR>")
            map("n", "<leader>fr", ":Telescope find_oldfiles<CR>")
            map("n", "<leader>fg", ":Telescope live_grep<CR>")
            map("n", "<leader>fc", ":Telescope grep_string<CR>")
        end
    },
}
