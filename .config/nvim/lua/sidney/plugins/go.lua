return {
    "ray-x/go.nvim",

    dependencies = {
        "ray-x/guihua.lua",
    },

    config = function()
        require("go").setup()
    end
}
