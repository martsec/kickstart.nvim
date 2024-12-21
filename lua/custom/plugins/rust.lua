return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    ft = { 'rust' },
    lazy = false, -- This plugin is already lazy
    config = function()
      vim.g.rustaceanvim = {
        -- Plugin configuration
        tools = {},
        -- LSP configuration
        server = {
          on_attach = function(client, bufnr)
            -- you can also put keymaps in here
          end,
          default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
              procMacro = {
                ignored = {
                  leptos_macro = {
                    -- optional: --
                    -- "component",
                    'server',
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
  },
}
