local scheme = "catppuccin_mocha"

vim.cmd("colorscheme " .. scheme)
vim.api.nvim_create_autocmd("Signal", {
    pattern = "SIGUSR1",
    command = "colorscheme " .. scheme,
})
