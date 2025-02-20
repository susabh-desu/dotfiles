return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            ensure_installed = {
                "lua_ls",
                "clangd",
                "html"
            },
        },
        config = function(_, opts)
            require("mason-lspconfig").setup(opts)
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            require("lspconfig").lua_ls.setup{}
            require("lspconfig").clangd.setup{}
            require("lspconfig").html.setup{}
        end,
    },
}
