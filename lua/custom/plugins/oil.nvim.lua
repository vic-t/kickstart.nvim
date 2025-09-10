return {
  {
    'stevearc/oil.nvim',
    -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    dependencies = {
      -- {
      'nvim-tree/nvim-web-devicons',
      --   config = function()
      --     require('nvim-web-devicons').setup {}
      --   end,
      -- },
    }, -- use if you prefer nvim-web-devicons
    config = function()
      require('oil').setup {
        columns = { 'icon' },
        view_options = {
          show_hidden = true,
        },
      }
      -- Optional keymaps:
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
