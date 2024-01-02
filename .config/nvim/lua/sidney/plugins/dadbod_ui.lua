return {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
        { 'tpope/vim-dadbod', },
        {
            'kristijanhusak/vim-dadbod-completion',
            ft = { 'sql', 'mysql', 'plsql' },
        },
    },
    init = function()
        vim.g.db_ui_use_nerd_fonts = 1
    end,
    config = function()
        -- Quick open
        vim.keymap.set("n", "<leader>db", ":DBUIToggle<CR>", { noremap = true })
    end
}
