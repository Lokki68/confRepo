return {
  "shaunsingh/nord.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.nord_disable_background = true

    require("nord").set()

    local bg_transparent = true

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      vim.g.nord_disable_background = bg_transparent
      vim.cmd([[colorscheme nord]])
    end

    vim.keymap.set("n", "<leader>ut", toggle_transparency, { noremap = true, silent = true })
  end,
}
