function reveal(direction, reset_cursor, restore_visual)
    if restore_visual then
    end
    print "asdasd"
    vim.api.nvim_call_function('VSCodeExtensionNotify', { direction, reset_cursor })
end

vim.keymap.set({ "n" ,"v" },"zz", function() reveal('center', false, false) end, { noremap = true})