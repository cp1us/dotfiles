vim.schedule(function()
    vim.pack.add({
        { src = "https://codeberg.org/mfussenegger/nvim-dap" },
        { src = "https://codeberg.org/mfussenegger/nvim-dap-python" },
        { src = "https://github.com/igorlfs/nvim-dap-view" },
    })

    local dap = require("dap")
    dap.adapters.lldb = {
        type = 'executable',
        command = 'lldb-dap',
        name = 'lldb'
    }
    dap.configurations.c = {
        {
            name = 'Launch',
            type = 'lldb',
            request = 'launch',
            program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
            args = {},
        },
    }
    dap.configurations.cpp = dap.configurations.c
    dap.configurations.rust = dap.configurations.c

    require("dap-python").setup("python3")

    require("dap-view").setup()
end)
