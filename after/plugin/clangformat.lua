vim.keymap.set("n", '<leader>cl', function()
        fileExtension = '.'.. vim.fn.expand('%:e')
        currentFile = vim.fn.expand('%:p')
        vim.cmd('!clang-format --assume-filename '.. fileExtension .. ' -i '.. currentFile)
end)
