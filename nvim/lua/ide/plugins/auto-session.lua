function map(mode, key, action)
    vim.keymap.set(mode, key, action, { noremap = true, silent = true })
end

return {
    "rmagatti/auto-session",
    config = function()
        local autosession = require "auto-session"

        autosession.setup {
            auto_restore_enable = false,
            auto_session_supress_dirs = {"~/", "~/Downloads", "~/Documents", "~/Desktop"},
        }

        map("n", "<leader>ss", "<cmd>SessionSave<CR>") 
        map("n", "<leader>sr", "<cmd>SessionRestore<CR>") 
    end
}
