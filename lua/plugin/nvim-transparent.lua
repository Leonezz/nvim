return {
    "xiyaowong/nvim-transparent",
    config = function()
        require("transparent").setup({
            extra_groups = { -- table/string: additional groups that should be cleared
            -- In particular, when you set it to 'all', that means all available groups
            -- example of akinsho/nvim-bufferline.lua
            "all"},
        })
    end
}
