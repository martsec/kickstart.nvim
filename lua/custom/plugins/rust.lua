return {
  -- {
  --   'cordx56/rustowl',
  --   version = '*', -- Latest stable version
  --   build = 'cargo install --path . --locked',
  --   lazy = false, -- This plugin is already lazy
  --   opts = {
  --     client = {
  --       on_attach = function(_, buffer)
  --         vim.keymap.set('n', '<leader>o', function()
  --           require('rustowl').toggle(buffer)
  --         end, { buffer = buffer, desc = 'Toggle RustOwl' })
  --       end,
  --     },
  --   },
  -- },
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    ft = { 'rust' },
    lazy = false, -- This plugin is already lazy
    config = function()
      vim.g.rustaceanvim = {
        -- Plugin configuration
        tools = {},
        -- LSP configuration
        -- rustowl = {},
        server = {
          on_attach = function(client, bufnr)
            -- you can also put keymaps in here
          end,
          default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
              cargo = {
                allFeatures = true,
                features = 'all',
                loadOutDirsFromCheck = true,
                buildScripts = {
                  enable = true,
                },
              },
              checkOnSave = true,
              procMacro = {
                enable = true,
                ignored = {
                  leptos_macro = {
                    -- optional: --
                    -- "component",
                    -- 'server',
                  },
                },
              },
            },
          },
        },
        -- DAP configuration
        dap = {},
      }
    end,
    -- opts = {
    --   on_attach = function(bufnr)
    --     map('n', '<leader>a', function()
    --       vim.cmd.RustLsp 'codeAction' -- supports rust-analyzer's grouping
    --       -- or vim.lsp.buf.codeAction() if you don't want grouping.
    --     end, { silent = true, buffer = bufnr, desc = 'Rust code[A]ction' })
    --
    --     map('n', 'K', function()
    --       vim.cmd.RustLsp { 'hover', 'actions' }
    --     end, { silent = true, buffer = bufnr, desc = 'Override hover keymep with rustaceanvims hover action' })
    --   end,
    -- },
    -- keys = {
    --   {
    --     '<c-o>',
    --     function()
    --       require('rustowl').rustowl_cursor()
    --     end,
    --     desc = 'RustOwl',
    --   },
    -- },
  },
  -- {
  --   'cordx56/rustowl',
  --   version = '*', -- Latest stable version
  --   build = 'cargo install --path . --locked',
  --   lazy = false, -- This plugin is already lazy
  --   opts = {},
  -- },
}
