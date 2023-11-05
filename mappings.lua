local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

-- Resize windows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Better window navigation
keymap("n", "<A-Left>", "<C-w>h", opts)
keymap("n", "<A-Down>", "<C-w>j", opts)
keymap("n", "<A-Up>", "<C-w>k", opts)
keymap("n", "<A-Right>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)
keymap("n", "<S-x>", ":bdelete<CR>", opts)

-- Insert --
-- None yet

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<S-j>", ":m .+1<CR>==", opts)
keymap("v", "<S-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Terminal stuff
keymap("n", "<leader>tg", ":lua _LAZYGIT_TOGGLE()<cr>", opts)
keymap("n", "<leader>tb", ":lua _BOTTOM_TOGGLE()<cr>", opts)
keymap("n", "<leader>tp", ":lua _PYTHON_TOGGLE()<cr>", opts)
keymap("n", "<leader>tt", ":ToggleTerm<cr>", opts)

-- Debugger
keymap("n", "<leader>dt", ":lua require('dapui').toggle()<cr>", opts)
keymap("n", "<leader>db", ":DapToggleBreakpoint<cr>", opts)
keymap("n", "<leader>dc", ":DapContinue<cr>", opts)
keymap("n", "<leader>di", ":DapStepInto<cr>", opts)
keymap("n", "<leader>dO", ":DapStepOut<cr>", opts)
keymap("n", "<leader>do", ":DapStepOver<cr>", opts)
keymap("n", "<leader>dx", ":DapTerminate<cr>", opts)

-- Misc

keymap("n", "<A-q>", ":qall!<cr>", opts)
keymap("n", "<A-w>", ":w!<cr>", opts)
