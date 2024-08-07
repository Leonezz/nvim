local keymap = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
end

return {
    "nvim-telescope/telescope.nvim",
    -- tag = "0.1.0",
    -- or                            , branch = '0.1.x',
    dependencies = {{"nvim-lua/plenary.nvim"}, {"nvim-telescope/telescope-fzf-native.nvim"}},
    config = function()
        local status, actions = pcall(require, "telescope.actions")
        if (not status) then
            vim.notify("telescope.actions require failed...")
            return
        end

        -- local actions = require('telescope.actions')
        -- Global remapping
        ------------------------------
        require("telescope").setup {
            defaults = {
                mappings = {
                    n = {
                        ["q"] = actions.close,
                        ["l"] = actions.file_edit
                    }
                },
                file_ignore_patterns = {"./node_modules"}
            },
            extensions = {
                fzf = {
                    fuzzy = true, -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true, -- override the file sorter
                    case_mode = "smart_case" -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            }
        }
        -- To get fzf loaded and working with telescope, you need to call
        -- load_extension, somewhere after setup function:
        keymap()
        require("telescope").load_extension("fzf")
    end
}
