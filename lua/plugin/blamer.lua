return {
    "APZelos/blamer.nvim",
    config = function()
        vim.g.blamer_enabled = true
        vim.g.blamer_show_in_visual_modes = false
        vim.g.blamer_show_in_insert_modes = false
        vim.g.blamer_prefix = '  '
        pcall(vim.cmd, "highlight Blamer guifg=grey")
    end
}
