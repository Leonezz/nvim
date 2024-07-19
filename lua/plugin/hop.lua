local keymap = function()
    local opt = { noremap = true, silent = true }
    local map = vim.api.nvim_set_keymap
    -- hop.vim-
    map("n", "<leader>w", ":HopWord<CR>", opt)
    map("n", "<leader>l", ":HopLine<CR>", opt)
end
return {
    "phaazon/hop.nvim",
    config = function()
        require("hop").setup({
            keys = "etovxqpdygfblzhckisuran"
        })
        keymap()
    end
}
