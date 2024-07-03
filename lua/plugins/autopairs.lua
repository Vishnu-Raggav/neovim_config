return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
        local npairs = require('nvim-autopairs')
        local Rule = require('nvim-autopairs.rule')

        npairs.setup{}

    end
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
}
