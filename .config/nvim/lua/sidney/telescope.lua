require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ['<C-a>'] = function() print('Hello, world!') end
            }
        }
    }
}
