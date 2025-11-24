vim.opt.number = true
vim.opt.undofile = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.diagnostic.config({
  virtual_text = true,
  virtual_lines = { current_line = true },
  underline = true,
  update_in_insert = true
})

-- uncomment to make default background transparent
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   callback = function()
--     local groups = {
--       "Normal",
--       "NormalNC",
--       "NormalFloat",
--       "FloatBorder",
--       "SignColumn",
--       "CursorLine",
--       "LineNr",
--       "FoldColumn",
--       "MsgArea",
--       "TelescopeNormal",
--       "TelescopeBorder"
--     }
--     for _, group in ipairs(groups) do
--       vim.cmd("highlight " .. group .. " guibg=NONE ctermbg=NONE")
--     end
--   end,
-- })
--
