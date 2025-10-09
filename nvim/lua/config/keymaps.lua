-- Keymaps are automatically loaded on the VeryLazy event Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- gru-far
vim.keymap.set({ "n", "x" }, "<leader>si", function()
  require("grug-far").open({ visualSelectionUsage = "operate-within-range" })
end, { desc = "grug-far: Search within range" })
