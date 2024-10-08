vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv-gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv-gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>dd", function() require("dapui").toggle() end)
vim.keymap.set("n", "<leader>dl", function() require("dap").step_into() end)
vim.keymap.set("n", "<leader>dj", function() require("dap").step_over() end)
vim.keymap.set("n", "<leader>dk", function() require("dap").step_out() end)
vim.keymap.set("n", "<leader>d_", function() require("dap").restart() end)
vim.keymap.set("n", "<leader>drc", function() require("dap").run_to_cursor() end)
vim.keymap.set("n", "<leader>dbp", function() require("dap").toggle_breakpoint() end)
