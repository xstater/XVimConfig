local picker = require 'telescope.builtin'

require 'which-key'.register(
    {
        ["fF"] = { picker.find_files, "Find files" },
        ["fb"] = { picker.buffers, "Find buffers" },
        ["fc"] = { picker.commands , "Find commands" },
        ["fq"] = { picker.quickfix , "Find quickfix" },
        ["ff"] = { picker.current_buffer_fuzzy_find , "Find in current buffer" },
    },
    {
        mode = "n",
        prefix = "<leader>"
    })
