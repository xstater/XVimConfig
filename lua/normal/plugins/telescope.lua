local picker = require 'telescope.builtin'

require 'which-key'.add(
    {
        { "<leader>ff", picker.find_files, desc = "Find files" },
        { "<leader>fb", picker.buffers, desc = "Find buffers" },
        { "<leader>fc", picker.commands , desc = "Find commands" },
        { "<leader>fq", picker.quickfix , desc = "Find quickfix" },
        { "<leader>fl", picker.current_buffer_fuzzy_find , desc = "Find lines in current buffer" },
    }
)