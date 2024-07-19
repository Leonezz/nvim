return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("ibl").setup({})
        -- 	-- 空行占位
        --   indent_blankline_char = " ",
        -- 	-- 用 treesitter 判断上下文
        -- 	show_current_context = true,
        -- 	show_current_context_start = true,
        -- 	context_patterns = {
        -- 		"class",
        -- 		"function",
        -- 		"method",
        -- 		"element",
        -- 		"^if",
        -- 		"^while",
        -- 		"^for",
        -- 		"^object",
        -- 		"^table",
        -- 		"block",
        -- 		"arguments",
        -- 	},
        -- 	-- :echo &filetype
        -- 	filetype_exclude = {
        -- 		"dashboard",
        -- 		"packer",
        -- 		"terminal",
        -- 		"help",
        -- 		"log",
        -- 		"markdown",
        -- 		"TelescopePrompt",
        -- 		"lsp-installer",
        -- 		"lspinfo",
        -- 		"toggleterm",
        -- 	},
        -- 	-- 竖线样式
        -- 	-- char = '¦'
        -- 	-- char = '┆'
        -- 	-- char = '│'
        -- 	-- char = "⎸",
        -- 	char = "▏",
        -- })
    end
}
