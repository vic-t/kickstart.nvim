return {
  {
    'olimorris/codecompanion.nvim',
    -- config = function()
    --   require('codecompanion').setup {
    --   }
    -- end,
    cmd = { 'CodeCompanion', 'CodeCompanionChat', 'CodeCompanionActions' },
    dependencies = {
      'j-hui/fidget.nvim', -- Display status
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'ravitemer/mcphub.nvim',
    },
    opts = {
      ---@module "codecompanion"
      ---@type CodeCompanion.Config
      adapters = {
        http = {
          -- qwen3 = function()
          --   return require('codecompanion.adapters').extend('ollama', {
          --     name = 'qwen3', -- Give this adapter a different name to differentiate it from the default ollama adapter
          --     opts = {
          --       vision = true,
          --       stream = true,
          --     },
          --     env = {
          --       url = 'localhost:11434',
          --       api_key = '',
          --     },
          --     headers = {
          --       ['Content-Type'] = 'application/json',
          --       ['Authorization'] = 'Bearer ${api_key}',
          --     },
          --     parameters = {
          --       sync = true,
          --     },
          --     schema = {
          --       model = {
          --         default = 'qwen3:latest',
          --       },
          --       num_ctx = {
          --         default = 16384,
          --       },
          --       think = {
          --         default = false,
          --       },
          --       keep_alive = {
          --         default = '5m',
          --       },
          --     },
          --   })
          -- end,
          anthropic = function()
            return require('codecompanion.adapters').extend('anthropic', {
              schema = {
                model = {
                  default = 'claude-3-5-sonnet',
                },
              },
              env = {
                api_key = '',
              },
            })
          end,
        },
      },
      -- strategies = {
      --   chat = {
      --     adapter = 'qwen3',
      --     model = 'qwen3:latest',
      --   },
      --   inline = {
      --     adapter = 'qwen3',
      --   },
      -- },
      extensions = {
        mcphub = {
          callback = 'mcphub.extensions.codecompanion',
          opts = {
            make_vars = true,
            make_slash_commands = true,
            show_result_in_chat = true,
          },
        },
      },
    },
  },
}
