return {
  "catppuccin/nvim", 
  lazy = False,
  name = "catppuccin", 
  priority = 1000, 
  config = function()
  vim.cmd.colorscheme "catppuccin"
  
  -- Peep that background
  vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
  vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none"})
  --vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none"})
  end
  
}



