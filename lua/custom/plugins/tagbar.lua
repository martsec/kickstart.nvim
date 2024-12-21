return {
  {
    'preservim/tagbar',

    config = function()
      vim.api.nvim_create_autocmd('VimEnter', {
        pattern = { '*' },
        nested = true,
        command = ':call tagbar#autoopen(1)',
      })
      vim.keymap.set('n', '<leader>tt', ':TagbarToggle<CR>', { desc = 'Open [T]agbar' })
    end,
  },
}
