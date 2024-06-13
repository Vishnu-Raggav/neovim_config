-- Package Manager (Lazy)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Import Modules
require("remap")
require("lazy").setup("plugins")

-- Theme Customizations      
vim.o.relativenumber = true
vim.o.number = true
vim.wo.cursorline = true
vim.opt.scrolloff = 10
vim.opt.wrap = false
vim.cmd("highlight Normal guibg=#00ffffff")
vim.opt.showmode = false
vim.opt.mouse = ""
