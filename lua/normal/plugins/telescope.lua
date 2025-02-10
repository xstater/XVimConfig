local picker = require 'telescope.builtin'

require 'which-key'.add(
    {
        { "<leader>fb", picker.buffers, desc = "Find buffers" },
        { "<leader>fc", picker.commands, desc = "Find commands" },
        { "<leader>ff", picker.find_files, desc = "Find files" },
        { "<leader>fl", picker.current_buffer_fuzzy_find, desc = "Find lines in current buffer" },
        { "<leader>fq", picker.quickfix, desc = "Find quickfix" },
      }
)