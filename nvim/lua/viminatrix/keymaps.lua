local map = require('viminatrix.utils').map

-- Clear search with <Esc>
map({ 'i', 'n' }, '<Esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and clear hlsearch' })

--- Saving
map({ 'i', 'v', 'n', 's' }, '<C-s>', '<cmd>w<cr>', { desc = 'Save buffer' })
map('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save buffer' })
map('n', '<leader>ww', '<cmd>noa w<cr>', { desc = 'Save all buffers' })

-- Quitting
map('n', '<leader>q', ':q!<cr>', { desc = 'Quit buffer' })
map('n', '<leader>qq', ':qa!<cr>', { desc = 'Quit all buffers' })

-- better indenting
map('v', '<', '<gv', { desc = '<indent left' })
map('v', '>', '>gv', { desc = 'indent right' })

-- Buffer navigation
map('n', '<S-l>', ':bnext<CR>', { desc = 'Next buffer' })
map('n', '<S-h>', ':bprevious<CR>', { desc = 'Previous buffer' })
map('n', '<leader>bd', ':bdelete<cr>', { desc = 'Buffer Delete' })
map('n', '<leader>bD', ':bufdo bd<cr>', { desc = 'Buffer Delete all' })
map('n', '<leader>;', '<C-^>', { desc = 'Toggle last buffers' }) -- toggle last buffers

-- Better window navigation
map('n', '<C-h>', '<C-w>h', { desc = 'Go to left window' })
map('n', '<C-j>', '<C-w>j', { desc = 'Go to lower window' })
map('n', '<C-k>', '<C-w>k', { desc = 'Go to upper window' })
map('n', '<C-l>', '<C-w>l', { desc = 'Go to right window' })

-- better up/down
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move line up' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move line down' })
map('v', 'p', '"_dP', { desc = '[P] paste' })

-- faster escape to normal mode
map('i', 'jk', '<Esc>', { desc = 'jk to escape into normal mode' })

-- Quickfix
map('n', '<leader>ck', ':cexpr []<cr>', { desc = 'Clear list' })
map('n', '<leader>cc', ':cclose <cr>', { desc = 'Close list' })
map('n', '<leader>co', ':copen <cr>', { desc = 'Open list' })
map('n', '<leader>cf', ':cfdo %s/', { desc = 'Search & Replace' })
map('n', '<leader>cp', ':cprev<cr>zz', { desc = 'Prev Item' })
map('n', '<leader>cn', ':cnext<cr>zz', { desc = 'Next Item' })

-- Search & Replace
map('n', '<leader>rr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Replace word' })

-- Toggle relative number
map('n', '<leader>rn', ':set relativenumber!<cr>', { desc = 'Relative Number' })

-- Tmux Navigator
map('n', '<C-h>', '<cmd>TmuxNavigateLeft<cr>', { desc = 'Tmux Navigate Left' })
map('n', '<C-j>', '<cmd>TmuxNavigateDown<cr>', { desc = 'Tmux Navigate Down' })
map('n', '<C-k>', '<cmd>TmuxNavigateUp<cr>', { desc = 'Tmux Navigate Up' })
map('n', '<C-l>', '<cmd>TmuxNavigateRight<cr>', { desc = 'Tmux Navigate Right' })

-- NeoTree
map('n', '<leader>e', ':Neotree position=left toggle=true reveal<CR>', { desc = 'Neotree' })

-- Telescope
-- Telescope: [Files]
map('n', '<leader><leader>', ':Telescope find_files<cr>', { desc = 'Find Files' })
map('n', '<leader>fg', ':Telescope live_grep<cr>', { desc = 'Find Grep' })
map('n', '<leader>ff', ':Telescope current_buffer_fuzzy_find<cr>', { desc = 'Find Fuzzy current buffer' })
map('n', '<leader>fq', ':Telescope quickfix<cr>', { desc = 'Find Quickfix' })

-- Telescope: [Git]
map('n', '<leader>fs', ':Telescope git_status<cr>', { desc = 'Find Status' })
map('n', '<leader>fc', ':Telescope git_commits<cr>', { desc = 'Find Commits' })
map('n', '<C-p>', ':Telescope git_files<cr>', { desc = 'Find Git files' })

-- Telescope: [Neovim]
map('n', '<leader>fh', ':Telescope help_tags<cr>', { desc = 'Find Help' })
map('n', '<leader>fo', ':Telescope vim_options<cr>', { desc = 'Find Options' })
map('n', '<leader>fb', ':Telescope buffers<cr>', { desc = 'Find Buffers' })
map('n', '<leader>fk', ':Telescope keymaps<cr>', { desc = 'Find Keymaps' })
map('n', '<leader>fd', ':Telescope diagnostics<cr>', { desc = 'Find Diagnostics' })

-- UndoTree
map('n', '<leader>u', ':UndotreeToggle<cr>', { desc = 'Undo Tree' })

-- Toggleterm
map('n', '<leader>tg', '<cmd>lua __lazygit_toggle()<CR>', { desc = 'Toggleterm Lazygit' })
map('n', '<leader>tn', '<cmd>lua __node_toggle()<CR>', { desc = 'Toggleterm Node' })
map('n', '<leader>tt', '<cmd>lua __terminal_toggle()<CR>', { desc = 'Toggleterm General' })

-- Telekasten
map('n', '<leader>z', '<cmd>Telekasten panel<CR>', { desc = '[Z]ettlekasten Panel' })
map('n', '<leader>zf', '<cmd>Telekasten find_notes<CR>', { desc = '[Z]ettlekasten [f]ind notes' })
map('n', '<leader>zg', '<cmd>Telekasten search_notes<CR>', { desc = '[Z]ettlekasten [g]rep notes' })
map('n', '<leader>zd', '<cmd>Telekasten goto_today<CR>', { desc = '[Z]ettlekasten [d]aily note' })
map('n', '<leader>zz', '<cmd>Telekasten follow_link<CR>', { desc = '[Z]ettlekasten follow link' })
map('n', '<leader>zn', '<cmd>Telekasten new_note<CR>', { desc = '[Z]ettlekasten [n]ew note' })
map('n', '<leader>zb', '<cmd>Telekasten show_backlinks<CR>', { desc = '[Z]ettlekasten [b]acklinks' })
map('n', '<leader>zI', '<cmd>Telekasten insert_img_link<CR>', { desc = '[Z]ettlekasten insert [I]mage' })
map('i', '[[', '<cmd>Telekasten insert_link<CR>', { desc = '[Z]ettlekasten insert markdown link [[' })
