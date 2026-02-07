---
title: Neovim Cheatsheet
---

<style>
@page { size: A4; margin: 16mm; }
body { font-size: 11pt; }
.two-col {
  column-count: 2;
  column-gap: 24px;
}
.two-col h2, .two-col h3, .two-col h4 {
  break-after: avoid;
}
.two-col ul, .two-col p {
  break-inside: avoid;
}
</style>

<div class="two-col">

## Core

- `<Esc>` Clear search highlight
- `t` Open terminal in split (zsh)
- `<Esc><Esc>` Exit terminal mode
- `<C-h/j/k/l>` Move focus between splits

## Search (Telescope)

- `,sh` Help tags
- `,sk` Keymaps
- `,sf` Find files
- `,ss` Telescope picker list
- `,sw` Grep current word
- `,sg` Live grep
- `,sd` Diagnostics
- `,sD` Buffer diagnostics
- `,sr` Resume last Telescope picker
- `,s.` Recent files
- `,/` Fuzzy search in current buffer
- `,s/` Live grep in open files
- `,sn` Search Neovim config files

Telescope actions in a picker:
- `<C-v>` Open selection in vertical split
- `<C-x>` Open selection in horizontal split
- `<C-t>` Open selection in new tab
- `<C-q>` Send selection(s) to quickfix list
- `<Tab>` Multi-select toggle
- Use multi-select + `<C-q>` to build a quickfix list and jump through results fast

## Diagnostics

- `,dq` Open diagnostic quickfix list
- `,tf` Toggle quickfix window

## Formatting

- `,f` Format buffer

## LSP (active after LSP attaches)

- `gd` Go to definition
- `gr` Go to references
- `gI` Go to implementation
- `gD` Go to declaration
- `g0` Document symbols
- `gW` Workspace symbols
- `K` Hover documentation
- `<C-k>` Signature help (insert mode)
- `[d` / `]d` Previous/next diagnostic
- `gl` Line diagnostics float
- `,D` Type definition
- `,ds` Document symbols
- `,ws` Workspace symbols
- `,rn` Rename
- `,ca` Code action
- `,th` Toggle inlay hints

## Git (gitsigns)

- `]c` / `[c` Next/prev hunk
- `,hs` Stage hunk (normal/visual)
- `,hr` Reset hunk (normal/visual)
- `,hS` Stage buffer
- `,hu` Undo stage hunk
- `,hR` Reset buffer
- `,hp` Preview hunk
- `,hb` Blame line
- `,hd` Diff against index
- `,hD` Diff against last commit
- `,tb` Toggle current line blame
- `,tD` Toggle deleted

## File Tree (neo-tree)

- `\` Reveal file tree
- `º` Reveal file tree (alt key)
- `\` (in tree) Close tree window
- `º` (in tree) Close tree window

## Tagbar

- `,tt` Toggle Tagbar

## Sessions (persistence.nvim)

- `,qs` Restore session
- `,qS` Select session
- `,ql` Restore last session
- `,qd` Disable session save

## Rust (Leptos helpers, Rust files only)

- `,lc` Insert Leptos component template
- `,ls` Insert Leptos slide template

## Commands

- `:Telescope` Open Telescope pickers
- `:Telescope lsp_*` LSP pickers (definitions, references, symbols, etc.)
- `:RustLsp` Rustaceanvim LSP actions (hover, codeAction, etc.)
- `:LspInfo` Show active LSP clients
- `:Mason` Manage LSP/formatter installs
- `:Lazy` Manage plugins
- `:ConformInfo` Formatter status

## Workspaces (LSP + Sessions)

- LSP workspace == project root detected by the language server.
- Use `,ws` to search workspace symbols across the project.
- Use `:LspInfo` to confirm the root directory a server chose.
- Per-project sessions: use persistence.nvim
  - `,qs` restore last session in this project
  - `,qS` pick a saved session
  - `,ql` restore last session across projects
  - `,qd` disable session saving for current session

## Telescope tips

- Use `<C-/>` or `?` inside a picker to see its mappings.
- Use `<C-u>`/`<C-d>` to scroll the preview window.
- Start with a broad search, then refine by typing more characters.
- Use `,sr` to resume the last picker with its query.
- Use `:Telescope builtin` to discover pickers.

</div>
