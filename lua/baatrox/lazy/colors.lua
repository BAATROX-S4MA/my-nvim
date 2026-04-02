function ColorMyPencils(color)
    color = color or "gruvbox" -- Changed default to gruvbox
    vim.cmd.colorscheme(color)

    -- Force transparency for core UI elements
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" }) -- Normal background for non-current windows
end

return {
    {
        "erikbackman/brightburn.vim",
    },

    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        priority = 1000, -- Load this before other plugins
        config = function()
            require("gruvbox").setup({
                terminal_colors = true,
                transparent_mode = true, -- FIXED: This must be true
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true,
                contrast = "",
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
            })
            ColorMyPencils("gruvbox") -- Set it here
        end,
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        config = function()
            require("tokyonight").setup({
                style = "storm",
                transparent = true, -- Enable transparency
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                },
            })
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })
        end
    },
}
