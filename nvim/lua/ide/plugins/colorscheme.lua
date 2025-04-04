return {
    "Shatur/neovim-ayu",
    priority = 1000,
    config = function()
        local colors = require('ayu.colors')
        colors.generate() -- Pass `true` to enable mirage
        require('ayu').setup({
            mirage = false,
            terminal = true,
            overrides = function()
                return { Comment = { fg = colors.comment } }
            end
        })
    end
}
