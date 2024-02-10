local picker = require 'telescope.builtin'

require 'which-key'.register(
    {
        ["ff"] = { picker.find_files, "Find files" },
        ["fb"] = { picker.buffers, "Find buffers" },
        ["fc"] = { picker.commands , "Find commands" },
        ["fq"] = { picker.quickfix , "Find quickfix" },
        ["fl"] = { picker.current_buffer_fuzzy_find , "Find lines in current buffer" },
    },
    {
        mode = "n",
        prefix = "<leader>"
    })
