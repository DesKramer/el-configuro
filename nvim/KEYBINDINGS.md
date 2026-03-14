# Neovim Key Bindings Guide

**Leader Key: `Space`**

## Essential Navigation

| Key | Description |
|-----|-------------|
| `jk` (insert mode) | Exit insert mode (alternative to ESC) |
| `<C-h>` | Move to left window |
| `<C-j>` | Move to bottom window |
| `<C-k>` | Move to top window |
| `<C-l>` | Move to right window |
| `<C-d>` | Half page down (centered) |
| `<C-u>` | Half page up (centered) |
| `n` | Next search result (centered) |
| `N` | Previous search result (centered) |
| `<C-a>` | Select all text |
| `<C-s>` | Save file |

## File Explorer
| Key | Description |
|-----|-------------|
| `<leader>e` | Toggle file explorer |
| `<leader>ef` | Find current file in explorer |

## Fuzzy Finding (Telescope)
| Key | Description |
|-----|-------------|
| `<leader>ff` | Find files |
| `<leader>fr` | Find recent files |
| `<leader>fs` | Search text in files (live grep) |
| `<leader>fc` | Find string under cursor |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Find help |
| `<leader>fk` | Find keymaps |
| `<leader>f/` | Fuzzy find in current file |

## LSP (Language Server)
| Key | Description |
|-----|-------------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `gr` | Find references |
| `gt` | Go to type definition |
| `gp` | Peek definition |
| `K` | Show hover information |
| `<C-k>` | Show signature help |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>fm` | Format document |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>dl` | Show line diagnostics |
| `<leader>dq` | Show diagnostics list |

## Diagnostics (Trouble)
| Key | Description |
|-----|-------------|\
| `<leader>xx` | Toggle trouble list |
| `<leader>xw` | Workspace diagnostics |
| `<leader>xd` | Document diagnostics |
| `<leader>xq` | Quickfix list |
| `<leader>xl` | Location list |

## LSP Saga
| Key | Description |
|-----|-------------|
| `<leader>lo` | Show outline |
| `<leader>lr` | Rename with Saga |
| `<leader>ld` | Show line diagnostics |
| `<leader>lD` | Show cursor diagnostics |
| `<leader>la` | Code action with Saga |

## Window Management
| Key | Description |
|-----|-------------|
| `<leader>sv` | Split window vertically |
| `<leader>sh` | Split window horizontally |
| `<leader>se` | Make splits equal size |
| `<leader>sx` | Close current split |
| `<C-Up>` | Increase window height |
| `<C-Down>` | Decrease window height |
| `<C-Left>` | Decrease window width |
| `<C-Right>` | Increase window width |

## Tab Management
| Key | Description |
|-----|-------------|
| `<leader>to` | Open new tab |
| `<leader>tx` | Close current tab |
| `<leader>tn` | Go to next tab |
| `<leader>tp` | Go to previous tab |
| `<leader>tf` | Open current buffer in new tab |

## Buffer Navigation
| Key | Description |
|-----|-------------|
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |
| `<leader>bd` | Delete buffer |

## Git Integration
| Key | Description |
|-----|-------------|
| `<leader>gs` | Git status |
| `<leader>gc` | Git commit |
| `<leader>gp` | Git push |
| `<leader>gl` | Git pull |
| `<leader>gb` | Git blame |
| `<leader>gd` | Git diff split |
| `]c` | Next git hunk |
| `[c` | Previous git hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hu` | Undo stage hunk |
| `<leader>hR` | Reset buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>tb` | Toggle blame |
| `<leader>td` | Toggle deleted |

## Debugging (DAP)
| Key | Description |
|-----|-------------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Continue debugging |
| `<leader>di` | Step into |
| `<leader>do` | Step over |
| `<leader>dO` | Step out |
| `<leader>dr` | Open REPL |
| `<leader>dl` | Run last debug |
| `<leader>dt` | Terminate debug |
| `<leader>du` | Toggle debug UI |

## Testing
| Key | Description |
|-----|-------------|
| `<leader>tt` | Run nearest test |
| `<leader>tf` | Run file tests |
| `<leader>ta` | Run all tests |
| `<leader>ts` | Toggle test summary |

## Code Editing
| Key | Description |
|-----|-------------|
| `gcc` | Toggle line comment |
| `gc` (visual) | Toggle comment |
| `gbc` | Toggle block comment |
| `<leader>p` (visual) | Paste without yanking |
| `<leader>d` | Delete without yanking |
| `<A-j>` | Move line down |
| `<A-k>` | Move line up |
| `<` (visual) | Indent left |
| `>` (visual) | Indent right |
| `J` | Join lines (cursor stays) |

## Surround Operations
| Key | Description |
|-----|-------------|
| `ys{motion}{char}` | Add surround |
| `ds{char}` | Delete surround |
| `cs{old}{new}` | Change surround |
| Example: `ysiw"` | Surround word with quotes |
| Example: `ds'` | Delete single quotes |
| Example: `cs'"` | Change single to double quotes |

## Folding
| Key | Description |
|-----|-------------|
| `za` | Toggle fold |
| `zR` | Open all folds |
| `zM` | Close all folds |
| `zr` | Open folds except kinds |
| `zm` | Close folds with |

## Todo Comments
| Key | Description |
|-----|-------------|
| `]t` | Next todo comment |
| `[t` | Previous todo comment |

## Treesitter Text Objects
| Key | Description |
|-----|-------------|
| `vaf` | Select around function |
| `vif` | Select inside function |
| `vac` | Select around class |
| `vic` | Select inside class |
| `vai` | Select around conditional |
| `vii` | Select inside conditional |
| `val` | Select around loop |
| `vil` | Select inside loop |

## Function/Class Navigation
| Key | Description |
|-----|-------------|
| `]f` | Next function start |
| `[f` | Previous function start |
| `]]` | Next class start |
| `[[` | Previous class start |

## Other Useful Commands
| Key | Description |
|-----|-------------|
| `<leader>nh` | Clear search highlights |
| `<leader>qq` | Quit all |
| `<leader>mp` | Toggle markdown preview |

## Terminal
| Key | Description |
|-----|---|
| `<leader>tt` | Toggle floating terminal |
| `<leader>ot` | Toggle floating terminal |
| `<leader>oc` | Run CLI command |
| `<leader>ol` | Re-run last CLI command |

## Tips

1. **Which-key Help**: Press `<leader>` and wait to see available keybindings
2. **Fuzzy Finding**: Most telescope commands support fuzzy matching
3. **Visual Mode**: Many normal mode commands work in visual mode for selections
4. **Repeat Operations**: Use `.` to repeat the last operation
5. **Macro Recording**: Use `q{letter}` to record, `q` to stop, `@{letter}` to play

## Custom Commands

- `:Mason` - Open LSP installer
- `:Lazy` - Open plugin manager
- `:Telescope` - Open telescope picker
- `:Git` or `:G` - Open fugitive git status

Remember: You can always use `<leader>fk` to search through all keymaps interactively!