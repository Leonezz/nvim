return {
    "lervag/vimtex",
    config = function()
        vim.g.tex_flavor = "latex"
        vim.g.vimtex_quickfix_mode = 0
        vim.g.vimtex_view_method = "SumatraPDF.exe"
        -- vim.g.vimtex_compiler_progname = 'nvr'
        vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
        vim.g.vimtex_view_general_options_latexmk = "-reuse-instance"
        vim.g.vimtex_toc_config = "{ \
            'name': 'TOC', \
            'layers': ['content', 'todo', 'include'], \
            'split_width': 25, \
            'todo_sorted': 0, \
            'show_help': 1, \
            'show_numbers': 1, \
            }"
    end
}
