vim.fn.sign_define("DiagnosticSignError",
    { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn",
    { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo",
    { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint",
    { text = "󰌵", texthl = "DiagnosticSignHint" })

require("neo-tree").setup({})

function ToggleNeotree() -- focus to Neotree and Buffer
    local bufName = vim.fn.bufname()

    if bufName == "neo-tree filesystem [1]" then
        vim.cmd("wincmd p")
    else
        vim.cmd("Neotree focus")
    end
end
