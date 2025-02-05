local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--brance=stable",
      lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)

require("vimsettings")
require("lazy").setup("plugins")

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        require("neo-tree.command").execute({ toggle = true })
		  vim.cmd("wincmd p")
    end,
})

