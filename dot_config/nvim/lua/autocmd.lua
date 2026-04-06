vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank()
  end
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.opt_local.cursorline = false
  end,
})


vim.api.nvim_create_autocmd("LspProgress", {
  buffer = buf,
  callback = function(ev)
    local value = ev.data.params.value
    vim.api.nvim_echo({ { value.message or "done" } }, false, {
      id = "lsp." .. ev.data.params.token,
      kind = "progress",
      source = "vim.lsp",
      title = value.title,
      status = value.kind ~= "end" and "running" or "success",
      percent = value.percentage,
    })
  end,
})

-- vim.api.nvim_create_autocmd("LspAttach", {
--   callback = function(ev)
--     local client_id = ev.data.client_id
--     vim.lsp.completion.enable(true, client_id, ev.buf, {
--       autotrigger = true,
--       convert = function(item)
--         return { abbr = item.label:gsub('%b()', '') }
--       end,
--     })
--   end,
-- })

-- vim.api.nvim_create_autocmd("CmdlineChanged", {
--   callback = function()
--     vim.fn.wildtrigger()
--   end
-- })
