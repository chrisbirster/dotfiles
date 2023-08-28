-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
vim.g.dap_vitual_text = true

-- Disable persistent undo
vim.opt.undofile = false
vim.opt.colorcolumn = "80"
