vim.pack.add({
    { src = "https://github.com/ellisonleao/gruvbox.nvim" },
    { src = "https://github.com/catppuccin/nvim" },
    { src = "https://github.com/rebelot/kanagawa.nvim" },
})

require("gruvbox").setup({
    italic = {
        strings = false,
        emphasis = false,
        comments = true,
        operators = false,
        folds = true,
    },
    transparent_mode = true,
})
-- require("catppuccin").setup()
-- require("kanagawa").setup()

local scheme = "gruvbox"
vim.cmd("colorscheme " .. scheme)
