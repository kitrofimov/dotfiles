-- For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
require('lazy').setup {
  { import = 'plugins.colorscheme' },
  { import = 'plugins.telescope' },
  { import = 'plugins.lsp' },
  { import = 'plugins.autocompletion' },
  { import = 'plugins.treesitter' },
  { import = 'plugins.gitsigns' },
  { import = 'plugins.Comment' },
  { import = 'plugins.vim-sleuth' },
  { import = 'plugins.vim-fugitive' },
}
