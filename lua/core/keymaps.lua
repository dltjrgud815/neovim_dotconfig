local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>w", "<cmd>w<CR>", opts)
map("n", "<leader>q", "<cmd>q<CR>", opts)
map("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

map("n", "<leader>e", "<cmd>Oil<CR>", opts)

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

map("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", opts)
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", opts)
map("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", opts)
