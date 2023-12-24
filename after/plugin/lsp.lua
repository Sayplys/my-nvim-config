local lsp = require('lsp-zero')

lsp.preset('recommended')

require('mason-lspconfig').setup({
	handlers = { lsp.default_setup, }
})

local cmp  = require('cmp')
cmp.setup({
	sources = {{name = 'nvim_lsp'}},
	mapping = {
		['<C-Space>'] = cmp.mapping.confirm({select = false}),
	}
})

local lspconfig = require('lspconfig')

lspconfig.clangd.setup{
        arguments = {
                'gtk-4.0/gtk/gtk.h',
        }
}

