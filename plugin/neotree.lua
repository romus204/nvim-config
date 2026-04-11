vim.pack.add({
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/MunifTanjim/nui.nvim",

    "https://github.com/nvim-neo-tree/neo-tree.nvim",
})

vim.fn.sign_define("DiagnosticSignError",
    { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn",
    { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo",
    { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint",
    { text = "󰌵", texthl = "DiagnosticSignHint" })

require("neo-tree").setup({
    filesystem = {
        hijack_netrw_behavior = "open_default",
    }
})

function ToggleNeotree() -- focus to Neotree and Buffer
    local bufName = vim.fn.bufname()

    if bufName == "neo-tree filesystem [1]" then
        vim.cmd("wincmd p")
    else
        vim.cmd("Neotree focus")
    end
end

vim.keymap.set("n", "<leader>E", ":Neotree float reveal<CR>")
vim.keymap.set("n", "<leader>e", ":lua ToggleNeotree()<CR>")
vim.keymap.set("n", "<leader>gs", ":Neotree float git_status<CR>")

