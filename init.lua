-- lazy.nvim のパス
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- lazy.nvim が未インストールなら自動でクローン
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- runtimepath に追加
vim.opt.rtp:prepend(lazypath)

-- 基本設定
require("options")   -- options.lua
require("keymaps")   -- keymaps.lua

-- UIとクリップボード設定
require("config.ui")
require("config.wsl_clipboard")

-- プラグイン設定を読み込む
require("lazy").setup("plugins")
