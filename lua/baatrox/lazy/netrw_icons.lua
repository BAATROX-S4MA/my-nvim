return {
    "prichrd/netrw.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require'netrw'.setup({
            icons = {
                symlink = 'δ',
                directory = '',
                file = '',
            },
            use_devicons = true, -- This pulls icons from web-devicons
        })
    end
}
