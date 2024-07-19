local keymap = function()
    local map = vim.api.nvim_set_keymap
    local opt = { noremap = true, silent = true }
    -- fzf.vim
    map("n", ",f", ":Files<CR>", opt)
    map("n", ",q", ":Lines<CR>", opt)
    map("n", ",w", ":Rg<CR>", opt)
    map("n", ",b", ":Buffers<CR>", opt)
end
return {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
        keymap()
    end
}