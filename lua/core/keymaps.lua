-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- Keep last yanked when pasting
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = '[P]aste witout loose last yanked' })
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = 'Better [Y]ank' })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = 'Better [Y]ank' })

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Ex mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- save file without auto-formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Resize with arrows
vim.keymap.set('n', '<C-S-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-S-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-S-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-S-Right>', ':vertical resize +2<CR>', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>bq', ':bdelete!<CR>', { noremap = true, silent = true, desc = '[Q]uit [B]uffer' })
vim.keymap.set('n', '<leader>bn', '<cmd> enew <CR>', { noremap = true, silent = true, desc = '[N]ew [N]uffer' })

-- Window management
vim.keymap.set('n', '<leader>sv', '<C-w>v', { noremap = true, silent = true, desc = '[S]plit window [V]ertically' })
vim.keymap.set('n', '<leader>sh', '<C-w>s', { noremap = true, silent = true, desc = '[S]plit window [H]orizontally' })
vim.keymap.set('n', '<leader>se', '<C-w>=', { noremap = true, silent = true, desc = 'Make [S]plit windows [E]qual width & height' })
vim.keymap.set('n', '<leader>sq', ':close<CR>', { noremap = true, silent = true, desc = '[Q]uit current [S]plit window' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-Left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-Right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-Up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-Down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })

-- Tabs
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { noremap = true, silent = true, desc = 'Open [N]ew [T]ab'} )
vim.keymap.set('n', '<leader>tq', ':tabclose<CR>', { noremap = true, silent = true, desc = '[Q]uit current [T]ab'} )

vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', { noremap = true, silent = true, desc = 'Toggle [L]ine [W]rapping' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating [D]iagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

