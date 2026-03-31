# Keybind Cheatsheet

Leader: `<Space>`

## General

| Key | Action | Mode |
|-----|--------|------|
| `<leader>pv` | Open file explorer | n |
| `J` / `K` | Move lines | v |
| `J` | Join lines (cursor stays) | n |
| `<C-d>` / `<C-u>` | Half-page jump (centered) | n |
| `n` / `N` | Search next/prev (centered) | n |
| `<leader>p` | Paste (no yank) | x |
| `<leader>y` | Yank to clipboard | n,v |
| `<leader>Y` | Yank line to clipboard | n |
| `<leader>d` | Delete (no yank) | n,v |
| `<C-c>` | Escape insert mode | i |
| `Q` | Disabled (no ex mode) | n |
| `<Esc>` | Exit terminal mode | t |
| `<leader>sr` | Search & replace word under cursor | n |
| `<leader>cx` | Make file executable | n |

## Window Navigation

| Key | Action | Mode |
|-----|--------|------|
| `<C-h>` | Move to left window | n |
| `<C-j>` | Move to below window | n |
| `<C-k>` | Move to above window | n |
| `<C-l>` | Move to right window | n |

## Completion (blink.cmp)

| Key | Action | Mode |
|-----|--------|------|
| `<CR>` | Accept completion | i |
| `<C-y>` | Select and accept | i |
| `<Tab>` | Snippet forward / NES / copilot accept | i |
| `<S-Tab>` | Snippet backward | i |
| `<M-]>` | Next copilot suggestion | i |
| `<M-[>` | Prev copilot suggestion | i |

## LSP (`<leader>c` = code)

| Key | Action | Mode |
|-----|--------|------|
| `gd` | Goto definition | n |
| `gD` | Goto declaration | n |
| `gr` | References | n |
| `gI` | Goto implementation | n |
| `gy` | Goto type definition | n |
| `K` | Hover | n |
| `gK` | Signature help | n |
| `<C-k>` | Signature help | i |
| `<leader>ca` | Code action | n,x |
| `<leader>cr` | Rename | n |
| `<leader>cf` | Format | n |
| `<leader>cd` | Line diagnostics | n |
| `<leader>cc` | Run codelens | n,x |
| `<leader>cC` | Refresh codelens | n |
| `<leader>ci` | Incoming calls | n |
| `<leader>co` | Outgoing calls | n |
| `]d` / `[d` | Next/prev diagnostic | n |
| `<leader>uh` | Toggle inlay hints | n |

## Debug (`<leader>d`)

| Key | Action | Mode |
|-----|--------|------|
| `<leader>dc` / `<F5>` | Continue | n |
| `<leader>do` / `<F10>` | Step over | n |
| `<leader>di` / `<F11>` | Step into | n |
| `<leader>dO` / `<F12>` | Step out | n |
| `<leader>db` | Toggle breakpoint | n |
| `<leader>dB` | Set breakpoint | n |
| `<leader>dL` | Log point | n |
| `<leader>dr` | REPL | n |
| `<leader>dl` | Run last | n |
| `<leader>dh` | Hover | n,v |
| `<leader>dp` | Preview | n,v |
| `<leader>df` | Frames | n |
| `<leader>ds` | Scopes | n |

## Harpoon (`<leader>h`)

| Key | Action | Mode |
|-----|--------|------|
| `<leader>ha` | Add file | n |
| `<C-e>` | Toggle menu | n |
| `<leader>h1-4` | Select file 1-4 | n |
| `<leader>hp` / `<leader>hn` | Prev/next file | n |

## Metals (`<leader>m`, Scala buffers)

| Key | Action | Mode |
|-----|--------|------|
| `<leader>mc` | Run codelens | n |
| `<leader>mw` | Hover worksheet | n |
| `<leader>ma` | All workspace diagnostics | n |
| `<leader>me` | Workspace errors | n |
| `<leader>mW` | Workspace warnings | n |
| `<leader>mm` | Metals commands | n |

## Telescope (`<leader>f` = find)

| Key | Action | Mode |
|-----|--------|------|
| `<leader>ff` / `<C-p>` | Find files | n |
| `<leader>fg` | Live grep | n |
| `<leader>fb` | Buffers | n |
| `<leader>fh` | Help tags | n |
| `<leader>ft` | Find TODOs | n |
| `<C-g>` | Git files | n |

## Git (`<leader>g`)

| Key | Action | Mode |
|-----|--------|------|
| `<leader>gs` | Git status (fugitive) | n |
| `]h` / `[h` | Next/prev hunk | n |
| `<leader>ghs` | Stage hunk | n,v |
| `<leader>ghr` | Reset hunk | n,v |
| `<leader>ghS` | Stage buffer | n |
| `<leader>ghu` | Undo stage hunk | n |
| `<leader>ghR` | Reset buffer | n |
| `<leader>ghp` | Preview hunk inline | n |
| `<leader>ghb` | Blame line | n |
| `<leader>ghd` | Diff this | n |

## Bufferline (`<leader>b`)

| Key | Action | Mode |
|-----|--------|------|
| `<S-h>` / `[b` | Prev buffer | n |
| `<S-l>` / `]b` | Next buffer | n |
| `<leader>bp` | Toggle pin | n |
| `<leader>bP` | Delete non-pinned buffers | n |
| `<leader>bo` | Delete other buffers | n |
| `<leader>bl` / `<leader>br` | Delete buffers left/right | n |
| `<leader>bj` | Pick buffer | n |

## Flash (`<leader>s` = search)

| Key | Action | Mode |
|-----|--------|------|
| `<leader>ss` | Flash jump | n,x,o |
| `<leader>sS` | Flash treesitter | n,o,x |
| `r` | Remote flash | o |
| `R` | Treesitter search | o,x |
| `<C-s>` | Toggle flash search | c |

## AI / Sidekick (`<leader>a`)

| Key | Action | Mode |
|-----|--------|------|
| `<Tab>` | Accept NES suggestion | n |
| `<C-.>` | Sidekick focus | n,t,i,x |
| `<leader>aa` | Toggle CLI | n |
| `<leader>as` | Select CLI tool | n |
| `<leader>ad` | Detach CLI session | n |
| `<leader>at` | Send context | n,x |
| `<leader>af` | Send file | n |
| `<leader>av` | Send visual selection | x |
| `<leader>ap` | Prompt selector | n,x |

## Session (`<leader>q`)

| Key | Action | Mode |
|-----|--------|------|
| `<leader>qr` | Session search | n |
| `<leader>qs` | Save session | n |
| `<leader>qa` | Toggle autosave | n |

## UI Toggles (`<leader>u`)

| Key | Action | Mode |
|-----|--------|------|
| `<leader>uh` | Toggle inlay hints | n |
| `<leader>uu` | Toggle undotree | n |
| `<leader>uN` | Toggle Sidekick NES | n |
| `<leader>un` | Dismiss notifications | n |

## Diagnostics (`<leader>x`)

| Key | Action | Mode |
|-----|--------|------|
| `<leader>xt` | TODO list (Trouble) | n |

## Noice (`<leader>sn`)

| Key | Action | Mode |
|-----|--------|------|
| `<leader>snl` | Last message | n |
| `<leader>snh` | Message history | n |
| `<leader>snd` | Dismiss all | n |

## Navigation Brackets

| Key | Action | Mode |
|-----|--------|------|
| `]d` / `[d` | Next/prev diagnostic | n |
| `]b` / `[b` | Next/prev buffer | n |
| `]t` / `[t` | Next/prev TODO | n |
| `]h` / `[h` | Next/prev git hunk | n |

## Other

| Key | Action | Mode |
|-----|--------|------|
| `<leader>?` | Show buffer keymaps (which-key) | n |
| `<leader>nh` | Notification history | n |
