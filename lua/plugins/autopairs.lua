return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
        local npairs = require('nvim-autopairs')
        local Rule = require('nvim-autopairs.rule')

        npairs.setup{}

        -- Add custom rule for < >
        npairs.add_rules {
            Rule("<", ">")
            :with_pair(function(opts)
                local pair = opts.line:sub(opts.col, opts.col + 1)
                return pair ~= "<>"
            end)
        }
    end
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
}
