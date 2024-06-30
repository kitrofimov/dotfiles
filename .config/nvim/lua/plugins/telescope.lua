return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-/>"] = "which_key"
          },
          n = {
            ["?"] = "which_key"
          }
        }
      },
      pickers = {},
      extensions = {
        file_browser = {}
      }
    })

    vim.keymap.set("n", "<leader>fa", builtin.builtin, { desc = "Find Telescope picker" })

    -- Files/buffers
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Find old files" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })

    -- Grep
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
    vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Find string under cursor" })

    -- Documentation (help/manpages/commands)
    vim.keymap.set("n", "<leader>fm", builtin.man_pages, { desc = "Find manpages" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help tags" })
    vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Find commands" })
    vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Find keymaps" })

    -- Git
    vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git status" })
    vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Search Git commits" })
    vim.keymap.set("n", "<leader>gb", builtin.git_bcommits, { desc = "Search Git commits for buffer" })

    vim.keymap.set('n', '<leader>/', function()
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })

    vim.keymap.set('n', '<leader>s/', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = '[S]earch [/] in Open Files' })
  end,
}
