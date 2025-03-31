return {
  {
    'ojroques/nvim-osc52',
    config = function()
      require('osc52').setup()
      -- Optional keymaps:
      vim.keymap.set('n', '<leader>y', function()
        require('osc52').copy_register '"'
      end, { desc = 'Copy to clipboard (OSC52)' })

      vim.keymap.set('v', '<leader>y', require('osc52').copy_visual, { desc = 'Copy visual to clipboard (OSC52)' })
    end,
  },
}
