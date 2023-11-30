local cmp_status_ok, cmp = pcall(require, 'cmp')
if not cmp_status_ok then
	return
end

require('luasnip/loaders/from_vscode').lazy_load()

require('luasnip/loaders/from_vscode').lazy_load({
	paths = { './deez-snippets' },
})

local cmp_select = { behavior = cmp.SelectBehavior.Select }

local kind_icons = {
	Text = '󰀬',
	Method = '󰠄',
	Function = '󰊕',
	Constructor = '',
	Field = '',
	Variable = '󰫧',
	Class = '',
	Interface = '',
	Module = '',
	Property = '',
	Unit = '',
	Value = '󰗧',
	Enum = '',
	Keyword = '',
	Snippet = '',
	Color = '',
	File = '',
	Reference = '',
	Folder = '',
	EnumMember = '',
	Constant = '',
	Struct = '',
	Event = '',
	Operator = '',
	TypeParameter = '󰊄',
}

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = {
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-e>'] = cmp.mapping.close(),
		['<C-Space>'] = cmp.mapping.complete(),
		-- Accept currently selected item. If none selected, `select` first item.
		-- Set `select` to `false` to only confirm explicitly selected items.
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<Tab>'] = nil,
		['<S-Tab>'] = nil,
		['<C-k>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif require('luasnip').expand_or_jumpable() then
				vim.fn.feedkeys(
					vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true),
					'')
			else
				fallback()
			end
		end, {
			'i',
			's',
		}),
		['<C-j>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif require('luasnip').jumpable(-1) then
				vim.fn.feedkeys(
					vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
			else
				fallback()
			end
		end, {
			'i',
			's',
		}),
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'buffer',  keyword_length = 4 },
		{ name = 'path' },
		{ name = 'nvim_lua' },
	},
	formatting = {
		fields = { 'kind', 'abbr', 'menu' },
		format = function(entry, vim_item)
			-- Kind icons
			vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
			-- Source
			vim_item.menu = ({
				nvim_lsp = '[LSP]',
				luasnip = '[Snippet]',
				buffer = '[Buffer]',
				path = '[Path]',
				nvim_lua = '[Lua]',
			})[entry.source.name]
			return vim_item
		end,
	},
	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	},
})
