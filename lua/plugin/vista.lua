local keymap = function()
    local map = vim.api.nvim_set_keymap
    local opt = {
        noremap = true,
        silent = true
    }
    -- vista
    map("n", "<leader>tl", ":Vista!!<CR>", opt)
    map("n", "<leader>tr", ":Vista<CR>", opt)
end
return {
    "liuchengxu/vista.vim",
    config = function()
        vim.g.vista_sidebar_width = 40
        vim.g.vista_icon_indent = {"╰─▸ ", "├─▸ "}
        -- vim.g.vista_default_executive = "coc"

        vim.cmd([[
            let g:vista#renderer#icons = { "function": "  ", "functions": "  ", "variable": "  ", "variables": "  ", "maps": "  ", "members ": "  ", "classes": "  ", "autocommand groups": " 祐 "}
        ]])

        keymap()
    end
}
