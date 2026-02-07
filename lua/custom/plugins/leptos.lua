return {

  --vim.keymap.set('n', '<leader>l', '', { desc = '[L]eptos' }),
  -- same autocmd, different key:
  vim.keymap.set('n', '<leader>lc', function()
    local lines = vim.split(

      [[#[component]
pub fn Cmp() -> impl IntoView {
    view! {
        <p>TODO</p>
    }
}

]],
      '\n',
      { plain = true }
    )
    vim.api.nvim_put(lines, 'l', true, true)
    vim.cmd [[normal! ?pub fn Cmp<CR>wwcw]]
  end, { desc = '[L]eptos [C]omponent', buffer = true, noremap = true }),

  vim.keymap.set('n', '<leader>ls', function()
    local lines = vim.split(
      [[#[component]
pub fn Cmp() -> impl IntoView {
    let title = "";
    let notes = r#""#;
    view! {
      <Slide title=title notes=notes>
        <p>TODO</p>
      </Slide>
    }
}

]],
      '\n',
      { plain = true }
    )
    vim.api.nvim_put(lines, 'l', true, true)
    vim.cmd [[normal! /Cmp<CR>ciw]]
  end, { desc = '[L]eptos [S]lide', buffer = true, noremap = true }),
}
