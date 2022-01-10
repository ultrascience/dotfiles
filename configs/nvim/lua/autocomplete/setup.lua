local cmp = require 'cmp'
local lspkind = require('lspkind')

local source_mapping = {
    buffer = "[Buffer]",
    nvim_lsp = "[LSP]",
    nvim_lua = "[Lua]",
    cmp_tabnine = "[TN]",
    path = "[Path]",
    treesitter = "[Treesitter]",
    latex_symbols = "[Latex]",
    calc = "[Calc]",
    orgmode = "[Org]",
    vsnip = "[Snippet]"
}

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.

        end
    },
    mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'}),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
        ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close()
        }),
        ['<CR>'] = cmp.mapping.confirm({select = true})
    },
    sources = {
        {name = 'orgmode'},
        {name = 'nvim_lsp'}, {name = 'vsnip'}, {name = 'path'}, {name = 'calc'},
        {name = 'treesitter'}, {name = 'cmp_tabnine'}, {name = "latex_symbols"},
        {name = 'buffer'}
    },
    formatting = {
    format = lspkind.cmp_format({
      with_text = true,
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function (entry, vim_item) 
            local menu = source_mapping[entry.source.name]
            if entry.source.name == 'cmp_tabnine' then
                if entry.completion_item.data ~= nil and
                    entry.completion_item.data.detail ~= nil then
                    menu = entry.completion_item.data.detail .. ' ' .. menu
                end
                vim_item.kind = ''
            end
            vim_item.menu = menu
            return vim_item
        end
    })
  }
})

