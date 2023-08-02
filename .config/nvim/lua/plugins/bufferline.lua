return {
    "akinsho/bufferline.nvim",
    tag = "v4.3.0",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        vim.opt.termguicolors = true
        require("bufferline").setup()
    end
}
