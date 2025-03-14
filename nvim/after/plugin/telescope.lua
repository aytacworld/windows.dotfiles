local builtin = require('telescope.builtin')

require('telescope').setup({
    defaults = {
        file_ignore_patterns = {
            "lazy%-lock.json",
            ".angular/*",
            "node_modules/*",
            ".git/*",
        }
    }
});

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
