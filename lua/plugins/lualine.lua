return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        -- Transparent lualine background
        local custom_cat= require'lualine.themes.catppuccin'
        custom_cat.normal.c.bg = '#00000000'

        require('lualine').setup({
            options = {
                theme = custom_cat,
                -- component_separators = { left = '', right = ''},
                -- section_separators = { left = '', right = ''},
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'filesize', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
        })
    end
}
