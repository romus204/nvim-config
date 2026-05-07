vim.pack.add({
    "https://github.com/MunifTanjim/nui.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/dlyongemallo/diffview.nvim",  -- Maintained fork of "sindrets/diffview.nvim".
    "https://github.com/stevearc/dressing.nvim",      -- Recommended but not required. Better UI for pickers.
    "https://github.com/nvim-tree/nvim-web-devicons", -- Recommended but not required. Icons in discussion tree.

    "https://github.com/harrisoncramer/gitlab.nvim",
})

require("gitlab.server").build(true)
require("gitlab").setup()
