local function render_md_setup()
  vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/MeanderingProgrammer/render-markdown.nvim",
  })

  require("render-markdown").setup({
    file_types = { "markdown", "codecompanion" },
  })

  vim.keymap.set("n", "<leader>mr", "<cmd>RenderMarkdown toggle<CR>", { desc = "Toggle markdown render" })
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "codecompanion" },
  callback = render_md_setup
})
