
return require('packer').startup(function(use) 
    use 'wbthomason/packer.nvim'

    use {
        'phaazon/hop.nvim',
        branch = 'v2',
        -- unused , don't know why
        config = function()
            print "asdasd"
            require 'hop'.setup {
                keys = 'ghfjdksla;tyrueiwoqpbnvmcz'
            }
        end
    }

    -- for vscode only
    if vim.g.vscode then
    end
end)